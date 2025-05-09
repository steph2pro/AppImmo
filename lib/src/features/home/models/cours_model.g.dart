// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursModelImpl _$$CoursModelImplFromJson(Map<String, dynamic> json) =>
    _$CoursModelImpl(
      contentImage: json['contentImage'] as String,
      title: json['title'] as String,
      profilImage: json['profilImage'] as String?,
      name: json['name'] as String,
      btnText: json['btnText'] as String,
      prise: json['prise'] as String?,
    );

Map<String, dynamic> _$$CoursModelImplToJson(_$CoursModelImpl instance) =>
    <String, dynamic>{
      'contentImage': instance.contentImage,
      'title': instance.title,
      'profilImage': instance.profilImage,
      'name': instance.name,
      'btnText': instance.btnText,
      'prise': instance.prise,
    };
