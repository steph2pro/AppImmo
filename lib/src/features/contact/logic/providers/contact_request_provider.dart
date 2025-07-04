import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/shared/services/user_storage_service.dart';
import 'package:myschoolapp/src/features/contact/logic/models/request_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

final contactRequestProvider = StateNotifierProvider<ContactRequestNotifier, AsyncValue<void>>(
  (ref) => ContactRequestNotifier(ref),
);

class ContactRequestNotifier extends StateNotifier<AsyncValue<void>> {
  ContactRequestNotifier(this.ref) : super(const AsyncData(null));

  final Ref ref;
  final _supabase = Supabase.instance.client;

  Future<void> sendRequest({
    required String objet,
    required String contenu,
  }) async {
    state = const AsyncLoading();

    try {
      final userId = await ref.read(userStorageServiceProvider).getUserId();
      if (userId == null) throw Exception("Utilisateur non identifié");

      final request = RequestModel(
        id: const Uuid().v4(),
        object: objet,
        contenue: contenu,
        iduser: userId,
      );

      await _supabase.from('Requete').insert(request.toJson());

      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
