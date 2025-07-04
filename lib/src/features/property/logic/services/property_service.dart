import 'package:myschoolapp/src/features/property/logic/models/propriete_response.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/datasource/models/user_model.dart';

class PropertyService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<List<ProprieteResponse>> fetchProperties() async {
    try {
      final response = await _client
          .from('Propriete')
          .select('*, user:User(*)'); // jointure utilisateur

      if (response == null || response.isEmpty) return [];

      final properties = response.map<ProprieteResponse>((item) {
        final map = Map<String, dynamic>.from(item);

        // Séparer les données Propriete et User
        final proprieteJson = Map<String, dynamic>.from(map)
          ..remove('user');
        final userJson = Map<String, dynamic>.from(map['user']);

        return ProprieteResponse(
          propriete: ProprieteModel.fromJson(proprieteJson),
          user: UserModel.fromJson(userJson),
        );
      }).toList();

      return properties;
    } catch (e) {
      print('Erreur lors de la récupération des propriétés : $e');
      return [];
    }
  }
}
