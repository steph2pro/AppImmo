// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestModelImpl _$$RequestModelImplFromJson(Map<String, dynamic> json) =>
    _$RequestModelImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      contenue: json['contenue'] as String,
      iduser: json['iduser'] as String,
    );

Map<String, dynamic> _$$RequestModelImplToJson(_$RequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'contenue': instance.contenue,
      'iduser': instance.iduser,
    };
