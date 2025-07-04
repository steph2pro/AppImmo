// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationModelImpl _$$ReservationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationModelImpl(
      id: json['id'] as String,
      dateReservation: DateTime.parse(json['dateReservation'] as String),
      idUser: json['idUser'] as String,
      idPropriete: json['idPropriete'] as String,
    );

Map<String, dynamic> _$$ReservationModelImplToJson(
        _$ReservationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateReservation': instance.dateReservation.toIso8601String(),
      'idUser': instance.idUser,
      'idPropriete': instance.idPropriete,
    };
