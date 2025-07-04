// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationModelImpl _$$ReservationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationModelImpl(
      id: json['id'] as String,
      iduser: json['iduser'] as String,
      idpropriete: json['idpropriete'] as String,
      datereservation: DateTime.parse(json['datereservation'] as String),
    );

Map<String, dynamic> _$$ReservationModelImplToJson(
        _$ReservationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iduser': instance.iduser,
      'idpropriete': instance.idpropriete,
      'datereservation': instance.datereservation.toIso8601String(),
    };
