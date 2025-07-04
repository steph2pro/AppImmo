import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final proprieteFormProvider = StateNotifierProvider<ProprieteFormNotifier, AsyncValue<void>>(
  (ref) => ProprieteFormNotifier(),
);

class ProprieteFormNotifier extends StateNotifier<AsyncValue<void>> {
  ProprieteFormNotifier() : super(const AsyncData(null));

  Future<void> submitPropriete(ProprieteModel propriete) async {
    try {
      state = const AsyncLoading();

      await Supabase.instance.client.from('Propriete').insert(propriete.toJson());

      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
