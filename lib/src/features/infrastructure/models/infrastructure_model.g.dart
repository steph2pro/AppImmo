// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infrastructure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfrastructureModelImpl _$$InfrastructureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InfrastructureModelImpl(
      title: json['title'] as String,
      star: json['star'] as String,
      contentImage: json['contentImage'] as String,
      profilImage: json['profilImage'] as String?,
      name: json['name'] as String,
      prise: json['prise'] as String,
      btnText: json['btnText'] as String,
    );

Map<String, dynamic> _$$InfrastructureModelImplToJson(
        _$InfrastructureModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'star': instance.star,
      'contentImage': instance.contentImage,
      'profilImage': instance.profilImage,
      'name': instance.name,
      'prise': instance.prise,
      'btnText': instance.btnText,
    };
