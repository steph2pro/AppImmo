import 'package:myschoolapp/src/features/property/logic/models/property_model.dart';

class OwnerModel {
  final String name;
  final String email;
  final String avatarUrl;
  final String ownerPhone;
  final List<PropertyModel> properties;

  OwnerModel({
    required this.name,
    required this.email,
    required this.avatarUrl,
    required this.properties,
    required this.ownerPhone,
  });
}