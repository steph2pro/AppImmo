// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propriete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProprieteResponseImpl _$$ProprieteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProprieteResponseImpl(
      propriete:
          ProprieteModel.fromJson(json['propriete'] as Map<String, dynamic>),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProprieteResponseImplToJson(
        _$ProprieteResponseImpl instance) =>
    <String, dynamic>{
      'propriete': instance.propriete,
      'user': instance.user,
    };
