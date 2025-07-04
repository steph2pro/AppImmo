import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/datasource/models/user_model.dart';

part 'propriete_response.freezed.dart';
part 'propriete_response.g.dart';

@freezed
class ProprieteResponse with _$ProprieteResponse {
  factory ProprieteResponse({
    required ProprieteModel propriete,
    required UserModel user,
  }) = _ProprieteResponse;

  factory ProprieteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProprieteResponseFromJson(json);
}
