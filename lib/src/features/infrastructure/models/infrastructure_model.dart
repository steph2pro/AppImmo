import 'package:freezed_annotation/freezed_annotation.dart';

part 'infrastructure_model.freezed.dart';
part 'infrastructure_model.g.dart';

@freezed
class InfrastructureModel with _$InfrastructureModel {

  factory InfrastructureModel({
    required String title,
    required String star,
    required String contentImage,
    String? profilImage,
    required String name,
    required String prise,
    required String btnText,
  }) = _InfrastructureModel;

  factory InfrastructureModel.fromJson(Map<String, dynamic> json) => _$InfrastructureModelFromJson(json);
}