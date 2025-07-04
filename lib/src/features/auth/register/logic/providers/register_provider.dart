import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/features/auth/register/logic/models/user_request_model.dart';
import 'package:myschoolapp/src/shared/services/storage_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final registerProvider = StateNotifierProvider<RegisterNotifier, AsyncValue<void>>(
  (ref) => RegisterNotifier(),
);

class RegisterNotifier extends StateNotifier<AsyncValue<void>> {
  RegisterNotifier() : super(const AsyncData(null));

  final _supabase = Supabase.instance.client;
  final _storageService = StorageService();

  Future<void> register(UserRequestModel user, File? imageFile) async {
    state = const AsyncLoading();

    try {
      // 1. Upload image if present
      String? imageUrl;
      if (imageFile != null) {
        imageUrl = await _storageService.uploadImage(imageFile, folder: 'profiles');
      }

      print('user to save');
      // 3. Insert user data in 'users' table
      await _supabase.from('User').insert({
        'id': user.id,
        'nom': user.nom,
        'email': user.email,
        'contact': user.contact,
        'profil': imageUrl,
        'role': user.role ?? 'user',
        'password':user.password
      });

      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
