// lib/src/datasource/models/reservation_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_model.freezed.dart';
part 'reservation_model.g.dart';

@freezed
class ReservationModel with _$ReservationModel {
  factory ReservationModel({
    required String id,
    required String iduser,
    required String idpropriete,
    required DateTime datereservation,
  }) = _ReservationModel;

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);
}
