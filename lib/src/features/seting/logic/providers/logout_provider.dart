    import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/shared/services/user_storage_service.dart';

final logoutProvider = Provider<LogoutService>((ref) {
  final userStorage = ref.read(userStorageServiceProvider);
  return LogoutService(userStorage);
});

class LogoutService {
  final UserStorageService _userStorageService;

  LogoutService(this._userStorageService);

  Future<void> logout() async {
    await _userStorageService.clearSession();
  }
}
