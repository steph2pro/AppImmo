// lib/src/features/home/providers/property_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/features/property/logic/models/propriete_response.dart';
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
final propertyListProvider = FutureProvider<List<ProprieteResponse>>((ref) async {
  final repository = ref.read(propertyRepositoryProvider);
  return repository.getAllProperties();
});
