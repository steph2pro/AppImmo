// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRequestModelImpl _$$UserRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRequestModelImpl(
      id: json['id'] as String,
      nom: json['nom'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      contact: json['contact'] as String?,
      profil: json['profil'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$UserRequestModelImplToJson(
        _$UserRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'email': instance.email,
      'password': instance.password,
      'contact': instance.contact,
      'profil': instance.profil,
      'role': instance.role,
    };
