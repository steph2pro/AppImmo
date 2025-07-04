import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/features/proprietaire/logic/models/owner_model.dart';
import '../services/owner_service.dart';

final ownerServiceProvider = Provider((ref) => OwnerService());

final ownersProvider = FutureProvider<List<OwnerModel>>((ref) async {
  final service = ref.watch(ownerServiceProvider);
  return service.fetchOwners();
});