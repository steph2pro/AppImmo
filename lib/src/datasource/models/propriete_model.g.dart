// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propriete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProprieteModelImpl _$$ProprieteModelImplFromJson(Map<String, dynamic> json) =>
    _$ProprieteModelImpl(
      id: json['id'] as String,
      titre: json['titre'] as String,
      description: json['description'] as String,
      prix: (json['prix'] as num).toInt(),
      type: json['type'] as String,
      localisation: json['localisation'] as String,
      image: json['image'] as String,
      imagesVues: (json['imagesVues'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nbrChambre: (json['nbrChambre'] as num?)?.toInt(),
      nbrSalleBain: (json['nbrSalleBain'] as num?)?.toInt(),
      nbrCuisine: (json['nbrCuisine'] as num?)?.toInt(),
      iduser: json['iduser'] as String,
    );

Map<String, dynamic> _$$ProprieteModelImplToJson(
        _$ProprieteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'titre': instance.titre,
      'description': instance.description,
      'prix': instance.prix,
      'type': instance.type,
      'localisation': instance.localisation,
      'image': instance.image,
      'imagesVues': instance.imagesVues,
      'nbrChambre': instance.nbrChambre,
      'nbrSalleBain': instance.nbrSalleBain,
      'nbrCuisine': instance.nbrCuisine,
      'iduser': instance.iduser,
    };
