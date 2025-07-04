// login_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/shared/services/user_storage_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, AsyncValue<void>>(
  (ref) => LoginNotifier(ref),
);

class LoginNotifier extends StateNotifier<AsyncValue<void>> {
  final Ref ref;
  LoginNotifier(this.ref) : super(const AsyncData(null));

  final _supabase = Supabase.instance.client;

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();

    try {
      // 1. Rechercher l'utilisateur par email
      final List<dynamic> response = await _supabase
          .from('User')
          .select()
          .eq('email', email);

      if (response.isEmpty) {
        throw Exception("Adresse email non reconnue.");
      }

      final userData = response.first;

      // 2. Comparer les mots de passe (⚠️ non chiffré ici)
      if (userData['password'] != password) {
        throw Exception("Mot de passe incorrect.");
      }

      // 3. Enregistrer les données en local
      await ref.read(userStorageServiceProvider).saveUserSession(
        userId: userData['id'],
        email: userData['email'],
        nom: userData['nom'] ?? '',
        contact: userData['contact'],
        role: userData['role'],
        profil: userData['profil'],
      );

      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
