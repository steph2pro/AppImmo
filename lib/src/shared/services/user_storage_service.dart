// user_storage_service.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final userStorageServiceProvider = Provider((ref) => UserStorageService());

class UserStorageService {
  // Future<void> saveUserSession({
  //   required String userId,
  //   required String email,
  // }) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('userId', userId);
  //   await prefs.setString('email', email);
  // }
  Future<void> saveUserSession({
    required String userId,
    required String email,
    required String nom,
    String? contact,
    String? role,
    String? profil,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
    await prefs.setString('email', email);
    await prefs.setString('nom', nom);
    if (contact != null) await prefs.setString('contact', contact);
    if (role != null) await prefs.setString('role', role);
    if (profil != null) await prefs.setString('profil', profil);
  }

  Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Future<String?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('userId');
  }

  Future<String?> getEmail() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('email');
}

Future<String?> getNom() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('nom');
}

Future<String?> getContact() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('contact');
}

Future<String?> getRole() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('role');
}

Future<String?> getProfil() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('profil');
}

}
