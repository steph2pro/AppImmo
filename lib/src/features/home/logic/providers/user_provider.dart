import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/shared/services/user_storage_service.dart';

final userInfoProvider = FutureProvider<UserInfo>((ref) async {
  final userStorage = ref.read(userStorageServiceProvider);
  final userId = await userStorage.getUserId();
  final email = await userStorage.getEmail();
  final nom = await userStorage.getNom();
  final contact = await userStorage.getContact();
  final role = await userStorage.getRole();
  final profil = await userStorage.getProfil();

  return UserInfo(
    id: userId ?? '',
    email: email ?? '',
    nom: nom ?? '',
    contact: contact,
    role: role,
    profil: profil,
  );
});

class UserInfo {
  final String id;
  final String email;
  final String nom;
  final String? contact;
  final String? role;
  final String? profil;

  UserInfo({
    required this.id,
    required this.email,
    required this.nom,
    this.contact,
    this.role,
    this.profil,
  });
}
