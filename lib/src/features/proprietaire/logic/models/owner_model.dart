import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/datasource/models/user_model.dart';
import 'package:myschoolapp/src/features/property/logic/models/propriete_response.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  factory OwnerModel({
    required UserModel user,
    @Default([]) List<ProprieteResponse> proprietes,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);
}
