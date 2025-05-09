import 'package:freezed_annotation/freezed_annotation.dart';

part 'cours_model.freezed.dart';
part 'cours_model.g.dart';

@freezed
class CoursModel with _$CoursModel {

  factory CoursModel({
     required String contentImage,
    required String title,
    String? profilImage,
    required String name,
    required String btnText,
    String? prise,
  }) = _CoursModel;

  factory CoursModel.fromJson(Map<String, dynamic> json) => _$CoursModelFromJson(json);
}