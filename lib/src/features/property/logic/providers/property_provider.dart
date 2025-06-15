// lib/src/features/home/providers/property_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/property_model.dart';
import '../services/property_service.dart';
import '../repositories/property_repository.dart';

// Service Provider
final propertyServiceProvider = Provider((ref) => PropertyService());

// Repository Provider
final propertyRepositoryProvider = Provider(
  (ref) => PropertyRepository(ref.read(propertyServiceProvider)),
);

// State Provider
final propertyListProvider = FutureProvider<List<PropertyModel>>((ref) async {
  final repository = ref.read(propertyRepositoryProvider);
  return repository.getAllProperties();
});
