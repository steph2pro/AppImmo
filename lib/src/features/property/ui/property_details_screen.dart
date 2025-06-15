import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/features/property/logic/services/whatsapp_service.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myschoolapp/src/features/property/logic/models/property_model.dart';

import 'widgets/propertyImageGallery.dart';

@RoutePage()
class PropertyDetailsScreen extends StatefulWidget {
  final PropertyModel property;

  const PropertyDetailsScreen({super.key, required this.property});

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  bool showAllImages = false;

  @override
  Widget build(BuildContext context) {
    final property = widget.property;

    return Scaffold(
      backgroundColor: context.colorScheme.tertiaryContainer,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              gapH20,
              Text("Vue principale",
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              gapH8,
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(property.image),
              ),
              gapH12,
              Text("Autres vues",
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              gapH8,
              PropertyImageGallery(
                images: property.imagesUrl,
                showAll: showAllImages,
                onToggle: () => setState(() => showAllImages = !showAllImages),
              ),
              gapH12,
              Text(property.title,
                  style: context.textTheme.titleMedium?.copyWith(fontSize: 20,fontWeight: FontWeight.bold)),
                  gapH10,
              Row(
                children: [
                  Text('${property.price} F CFA',
                      style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.primary,fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Text('(${property.sqft} sqft)',
                      style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.tertiary)  ),
                ],
              ),
              gapH8,
              Row(
                children: [
                   Icon(Icons.location_on, size: 16, color: context.colorScheme.onSurface),
                  gapW6,
                  Text(property.address,style: context.textTheme.bodyLarge?.copyWith(),)
                ],
              ),
              gapH10,
              _buildTagsRow(property),
              gapH16,
              _buildOwnerCard(property),
              gapH16,
              Center(
                child:
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: 
              TextButton.icon(
              onPressed: () async {
                try {
                  await WhatsappService.contactOwner(
                    phone: property.ownerPhone, // à ajouter dans `PropertyModel`
                    message: "Bonjour, je suis intéressé par la propriété : ${property.title}",
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Impossible d'ouvrir WhatsApp")),
                  );
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green,
                size: 25,
              ),
              label: Text("Contacter le propriétaire",
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  )),
              
            ),
              ), 
              ),

              gapH16,
              // _buildExpandableTile("Amenities"),
              // _buildExpandableTile("Interior Details"),
              // _buildExpandableTile("Construction Details"),
              // _buildExpandableTile("Location Map & Details"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child:  Icon(Icons.arrow_back_ios, color: context.colorScheme.onSurface,),
        ),
        gapW10,
         Text("Property Details",
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        const Spacer(),
         Icon(Icons.bookmark_border_rounded, color: context.colorScheme.onSurface,),
      ],
    );
  }

  Widget _buildTagsRow(PropertyModel property) {
    return Row(
      children: [
       _buildTag(FontAwesomeIcons.bed, '${property.bedrooms} chambre(s)'),
      _buildTag(FontAwesomeIcons.bath, '${property.bathrooms} salle(s) de bain'),
      _buildTag(FontAwesomeIcons.kitchenSet, '${property.kitchens} cuisine(s)'),

      ],
    );
  }

  Widget _buildTag(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Row(
        children: [
          Icon(icon, size: 16, color: context.colorScheme.secondary),
          gapW10  ,
          Text(text, style: context.textTheme.bodySmall,),
        ],
      ),
    );
  }

  Widget _buildOwnerCard(PropertyModel property) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.colorScheme.secondaryContainer.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(14), // 👈 coins arrondis de 14
          child: Image.network(
            "https://th.bing.com/th/id/OIP.sC5gWwVXXiQnXtGV2bR8JwHaHa?pid=ImgDet&w=474&h=474&rs=1&cb=idpwebpc1",
            width: 50, // même taille que le diameter du CircleAvatar (2 * 28)
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
          gapW12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(property.ownerName,
                    style:  context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
                gapH6,
                Text(property.ownerRole,
                    style:  context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
                gapH8,
                Text(property.description,
                    style: context.textTheme.bodyMedium?.copyWith(color: context.colorScheme.onSurface.withOpacity(0.7))),
                gapH8,
                Row(
                  children: List.generate(
                    property.rating.floor(),
                    (index) =>
                        const Icon(Icons.star, size: 16, color: Colors.orange),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableTile(String title) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold)),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text("Contenu de la section $title"),
        )
      ],
    );
  }
}
