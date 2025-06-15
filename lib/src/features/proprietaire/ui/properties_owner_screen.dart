import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/property_card.dart';
import 'package:myschoolapp/src/features/property/logic/services/whatsapp_service.dart';
import 'package:myschoolapp/src/features/proprietaire/logic/models/owner_model.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myschoolapp/src/features/property/logic/models/property_model.dart';


@RoutePage()
class PropertiesOwnerScreen extends StatefulWidget {
  final OwnerModel owner;

  const PropertiesOwnerScreen({super.key, required this.owner});

  @override
  State<PropertiesOwnerScreen> createState() => _PropertiesOwnerScreenState();
}

class _PropertiesOwnerScreenState extends State<PropertiesOwnerScreen> {
  bool showAllImages = false;

  @override
  Widget build(BuildContext context) {
    final owner = widget.owner;
    final screenWidth = MediaQuery.of(context).size.width;

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
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(14), // 👈 coins arrondis de 14
                  child: Image.network(
                    owner.avatarUrl,
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
                        Text(owner.name,
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                            // gapH4,
                        Text(owner.email,style:  context.textTheme.bodyLarge?.copyWith(
                          color:context.colorScheme.tertiary.withOpacity(0.6))),
                            gapH4,
                      
                        
                      ],
                    ),
                  ),
                ],
              ), 
              gapH20,
              
              Row(
            children: [
              _buildActionContainer(
                width: 150,
                icon: FontAwesomeIcons.solidMessage,
                color: Colors.blue,
                label: "Message",
              ),
              _buildActionContainer(
                width: screenWidth * 0.25,
                icon: FontAwesomeIcons.solidCalendar,
                color: Colors.deepPurple,
                label: "Rendez-vous",
              ),
              _buildActionContainer(
                width: screenWidth * 0.30,
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                label: "Contacte",
              ),
            ],
          ),
          gapH12,
              Text("Proprietes",
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              gapH8,
              Column(
                    children: owner.properties
                        .map((property)  {
                          return GestureDetector(
                            onTap: () {
                              context.pushRoute(
                                PropertyDetailsRoute(property: property)
                              );
                            },
                            child: PropertyCard(property: property)
                          );
                        }
                        )
                        .toList(),
                  ),
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
         Text("Property owner",
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        const Spacer(),
         Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimaryContainer.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                IconButton(
                  icon:   FaIcon(
                    FontAwesomeIcons.bookmark,
                    color: context.colorScheme.primary,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              )
        //  Icon(Icons.bookmark_border_rounded, color: context.colorScheme.onSurface,),
      ],
    );
  }



  Widget _buildActionContainer({
    required double width,
    required IconData icon,
    required Color color,
    required String label,
  }) {
    return Expanded(
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(color: color.withOpacity(0.6)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, size: 25, color: color),
            gapH10,
            Text(label,
            style: context.textTheme.bodyLarge?.copyWith(fontSize: 16)),
        
          ],
        ),
      ),
    ));
  }

}
