import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/features/proprietaire/logic/models/owner_model.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:myschoolapp/src/features/property/logic/services/whatsapp_service.dart';
import '../../logic/models/owner_model1.dart';

class OwnerCard extends StatelessWidget {
  final OwnerModel owner;
  const OwnerCard({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child:
        Column(
          children: [
            Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(14), // 👈 coins arrondis de 14
            child: Image.network(
              owner.user.profil!,
              width: 56, // même taille que le diameter du CircleAvatar (2 * 28)
              height: 56,
              fit: BoxFit.cover,
            ),
          ),

            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(owner.user.nom,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                      gapH4,
                  Text(owner.user.email,style:  context.textTheme.bodyLarge?.copyWith(
                    color:context.colorScheme.tertiary.withOpacity(0.6))),
                      gapH4,
                 
                  
                ],
              ),
            ),
            
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimaryContainer.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                IconButton(
                  icon:   FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: context.colorScheme.onPrimaryContainer,
                    size: 25,
                  ),
                   onPressed: () async {
                    try {
                      await WhatsappService.contactOwner(
                        phone: owner.user.contact, // à ajouter dans `ownerModel`
                        message: "Bonjour, ${owner.user.nom}",
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Impossible d'ouvrir WhatsApp")),
                      );
                    }
                  }
                ),
              )
          ],
        ), 
        gapH20,
        // Parcours de toutes les images des propriétés
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: owner.proprietes
                .expand((p) => p.propriete.imagesVues ?? [])
                .length,
            separatorBuilder: (_, __) => const SizedBox(width: 6),
            itemBuilder: (context, index) {
              // Récupère toutes les images dans une seule liste à plat
              final allImages = owner.proprietes
                  .expand((p) => p.propriete.imagesVues ?? [])
                  .toList();

              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  allImages[index],
                  width: 100,
                  height: 80,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported),
                ),
              );
            },
          ),
        ),
          ],
        )
      ),
    );
  }
}
