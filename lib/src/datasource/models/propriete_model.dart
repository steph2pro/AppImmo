import 'package:freezed_annotation/freezed_annotation.dart';

part 'propriete_model.freezed.dart';
part 'propriete_model.g.dart';

@freezed
class ProprieteModel with _$ProprieteModel {
  factory ProprieteModel({
    required String id,
    required String titre,
    required String description,
    required int prix,
    required String type,
    required String localisation,
    required String image,
    List<String>? imagesVues,
    int? nbrChambre,
    int? nbrSalleBain,
    int? nbrCuisine,
    required String iduser,
  }) = _ProprieteModel;

  factory ProprieteModel.fromJson(Map<String, dynamic> json) => _$ProprieteModelFromJson(json);
}
