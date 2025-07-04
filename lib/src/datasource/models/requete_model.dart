import 'package:freezed_annotation/freezed_annotation.dart';

part 'requete_model.freezed.dart';
part 'requete_model.g.dart';

@freezed
class RequeteModel with _$RequeteModel {
  factory RequeteModel({
    required String id,
    required String contenue,
    required String objet,
    required String idUser,
  }) = _RequeteModel;

  factory RequeteModel.fromJson(Map<String, dynamic> json) => _$RequeteModelFromJson(json);
}
