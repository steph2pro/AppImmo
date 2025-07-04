// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerModelImpl _$$OwnerModelImplFromJson(Map<String, dynamic> json) =>
    _$OwnerModelImpl(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      proprietes: (json['proprietes'] as List<dynamic>?)
              ?.map(
                  (e) => ProprieteResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OwnerModelImplToJson(_$OwnerModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'proprietes': instance.proprietes,
    };
