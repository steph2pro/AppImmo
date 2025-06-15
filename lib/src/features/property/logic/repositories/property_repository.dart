// lib/src/features/home/repositories/property_repository.dart

import '../models/property_model.dart';
import '../services/property_service.dart';

class PropertyRepository {
  final PropertyService service;

  PropertyRepository(this.service);

  Future<List<PropertyModel>> getAllProperties() {
    return service.fetchProperties();
  }
}
