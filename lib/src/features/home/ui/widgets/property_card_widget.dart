// widgets/property_card_widget.dart
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/features/property/logic/models/property_model.dart';
// import 'package:myschoolapp/src/features/home/models/property_model.dart';

class PropertyCardWidget extends StatelessWidget {
  final ProprieteModel property;

  const PropertyCardWidget({required this.property, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.network(property.image, height: 160, width: double.maxFinite,fit: BoxFit.cover)),
          gapH8,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(property.titre, style: const TextStyle(fontWeight: FontWeight.bold)),
            gapW4,
            Expanded(child:
            
            Text("${property.prix} CFA", style: const TextStyle(fontSize: 16, color: Colors.blue)),
          
            )
            ],
          ), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.grey, size: 16),
                  const SizedBox(width: 4),
                  Text(property.localisation, style: const TextStyle(color: Colors.grey)),
                ],
              ),
          
              // _buildIconWithText(Icons.square_foot, '${property.area}sqft'),
            ],
          ),
          gapH12,
          Expanded(child: 
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  _buildIconWithText(Icons.bed, '${property.nbrChambre} Bed'),
                  
                  _buildIconWithText(Icons.bathtub, '${property.nbrSalleBain} Bath'),
                  
                  _buildIconWithText(Icons.restaurant_menu, '${property.nbrCuisine} Kitch'),
                ],
                ),
         )
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
