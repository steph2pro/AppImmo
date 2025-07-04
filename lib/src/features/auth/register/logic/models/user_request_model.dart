import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request_model.freezed.dart';
part 'user_request_model.g.dart';

@freezed
class UserRequestModel with _$UserRequestModel {
  factory UserRequestModel({
    required String id,
    required String nom,
    required String email,
    required String password,
    String? contact,
    String? profil,
    String? role,
  }) = _UserRequestModel;

  factory UserRequestModel.fromJson(Map<String, dynamic> json) => _$UserRequestModelFromJson(json);
}
