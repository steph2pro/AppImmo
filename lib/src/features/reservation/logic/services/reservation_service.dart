// lib/src/features/reservation/services/reservation_service.dart

import 'package:supabase_flutter/supabase_flutter.dart';

class ReservationService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<void> addReservation({
    required String id,
    required String idUser,
    required String idPropriete,
    required DateTime dateReservation,
  }) async {
    await _client.from('Reservation').insert({
      'id': id,
      'datereservation': dateReservation.toIso8601String(),
      'iduser': idUser,
      'idpropriete': idPropriete,
    });
  }
}
