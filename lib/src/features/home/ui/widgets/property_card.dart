import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/features/property/logic/models/property_model.dart';
import 'package:myschoolapp/src/features/property/logic/models/propriete_response.dart';
// import 'package:myschoolapp/src/features/home/models/property_model.dart';

class PropertyCard extends StatelessWidget {
  final ProprieteModel property;

  const PropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              property.image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title & Price
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                    Text(
                      property.titre,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    gapH4,
                    Text(
                      "${property.prix} CFA",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                //   ],
                // ),

                gapH4,  

                // Location
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        property.localisation,
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // Specs
                Row(
                 children: [
                  // _buildIconWithText(Icons.square_foot, '${property.area}sqft'),
                  const SizedBox(width: 10),
                  _buildIconWithText(Icons.bed, '${property.nbrChambre}'),
                  const SizedBox(width: 10),
                  _buildIconWithText(Icons.bathtub, '${property.nbrSalleBain}'),
                  const SizedBox(width: 10),
                  _buildIconWithText(Icons.restaurant_menu, '${property.nbrCuisine}'),
                ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
Widget _buildIconWithText(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, size: 16, color: Colors.redAccent),
      const SizedBox(width: 4),
      Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
    ],
  );
}

}
