// lib/src/features/reservation/providers/reservation_provider.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/features/reservation/logic/services/reservation_service.dart';
import 'package:uuid/uuid.dart';
import 'package:myschoolapp/src/shared/services/toast_service.dart';
import 'package:myschoolapp/src/shared/services/user_storage_service.dart';

final reservationProvider =
    StateNotifierProvider<ReservationNotifier, AsyncValue<void>>(
  (ref) => ReservationNotifier(ref),
);

class ReservationNotifier extends StateNotifier<AsyncValue<void>> {
  ReservationNotifier(this._ref) : super(const AsyncData(null));

  final Ref _ref;
  final _service = ReservationService();

  Future<void> addReservation({
    required BuildContext context,
    required String idPropriete,
    required DateTime date,
  }) async {
    try {
      state = const AsyncLoading();

      /// ✅ Récupération depuis le local storage
      final userStorage = _ref.read(userStorageServiceProvider);
      final idUser = await userStorage.getUserId();

      if (idUser == null) {
        ToastService.showError('Utilisateur non connecté', context: context);
        state = const AsyncData(null);
        return;
      }

      final id = const Uuid().v4();

      await _service.addReservation(
        id: id,
        idUser: idUser,
        idPropriete: idPropriete,
        dateReservation: date,
      );

      ToastService.showSuccess('Réservation enregistrée !', context: context);
      state = const AsyncData(null);
    } catch (e) {
      ToastService.showError('Erreur : ${e.toString()}', context: context);
      state = AsyncError(e, StackTrace.current);
    }
  }
}
