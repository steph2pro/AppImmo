// lib/src/features/home/repositories/property_repository.dart

import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/features/property/logic/models/propriete_response.dart';

import '../models/property_model.dart';
import '../services/property_service.dart';

class PropertyRepository {
  final PropertyService service;

  PropertyRepository(this.service);

  Future<List<ProprieteResponse>> getAllProperties() {
    return service.fetchProperties();
  }
}
