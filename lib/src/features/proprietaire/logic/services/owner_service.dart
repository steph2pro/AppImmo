import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/datasource/models/user_model.dart';
import 'package:myschoolapp/src/features/proprietaire/logic/models/owner_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myschoolapp/src/features/property/logic/models/propriete_response.dart';

class OwnerService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<List<OwnerModel>> fetchOwners() async {
    final List<OwnerModel> owners = [];

    try {
      final userResponse = await _client
          .from('User')
          .select()
          .eq('role', 'propriétaire');

      if (userResponse == null || userResponse.isEmpty) {
        print('[OwnerService] Aucun utilisateur trouvé');
        return [];
      }

      for (final userJson in userResponse) {
        try {
          if (userJson == null) continue;

          final user = UserModel.fromJson(
            Map<String, dynamic>.from(userJson),
          );

          final propertyResponse = await _client
              .from('Propriete')
              .select()
              .eq('iduser', user.id);

          if (propertyResponse == null || propertyResponse.isEmpty) {
            owners.add(OwnerModel(user: user, proprietes: []));
            continue;
          }

          final properties = <ProprieteResponse>[];

          for (final json in propertyResponse) {
            if (json == null) continue;

            try {
              final propriete = ProprieteModel.fromJson(
                Map<String, dynamic>.from(json),
              );

              properties.add(
                ProprieteResponse(propriete: propriete, user: user),
              );
            } catch (e) {
              print('[OwnerService] Erreur lors du parsing d’une propriété : $e');
              continue;
            }
          }

          owners.add(OwnerModel(user: user, proprietes: properties));
        } catch (e) {
          final userId = userJson?['id'] ?? 'ID inconnu';
          print('[OwnerService] Erreur utilisateur "$userId" : $e');
        }
      }
    } catch (e) {
      print('[OwnerService] Erreur globale : $e');
    }

    return owners;
  }
}
