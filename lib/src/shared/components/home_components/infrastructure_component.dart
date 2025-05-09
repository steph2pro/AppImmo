import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/components/string_extionsions.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

class InfrastructureComponent extends StatelessWidget {
  final String star;
  final String contentImage;
  final String title;
  final String? profilImage;
  final String name;
  final String prise;
  final String btnText;
  final VoidCallback? btnTap;

  const InfrastructureComponent({
    Key? key,
    required this.title,
    required this.star,
  this.profilImage,
  required this.contentImage,
  required this.name,
  required this.prise,
  required this.btnText,
  this.btnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 218,
      // height: 216,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
      color: context.colorScheme.tertiaryContainer, // Couleur de fond
      border: Border.all(
        color: context.colorScheme.outline, // Couleur de la bordure
        width: 1, // Épaisseur de la bordure
      ),
      borderRadius: BorderRadius.circular(10), // Coins arrondis
    ),
      child: Column(
        children: [
          Stack(
            children: [
                 ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                contentImage,
                fit: BoxFit.cover,
                width: 330,
                height: 150,
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 11, left: 11),
                    padding: EdgeInsets.all(6),
                    // width: 62,
                    // height: 28,
                    decoration: BoxDecoration(
                      color: context.colorScheme.tertiaryContainer,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      children: [
                        Icon(
                        Icons.star,
                        size: 24,
                        color: context.colorScheme.primary,
                      ),
                      gapW10,
                      Text(
                      star,
                      style: context.textTheme.bodySmall!.copyWith(
                        fontSize: 14,
                        color: context.colorScheme.outline,
                      ),
                    ),

                      ],
                    )
                  ),
                  Container(
                     margin: EdgeInsets.only(top: 11, right: 11),
                    // width: 28,
                    height: 40,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(
                        size: 24,
                        Icons.bookmark,
                        color: context.colorScheme.primary,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
          
          gapH8,
          Text(
            title.capitalize().truncateWithEllipsis(25),
            style: context.textTheme.titleMedium!.copyWith(
              fontSize: 18,
              color: context.colorScheme.secondary,
            ),
          ),
          gapH8,
          SizedBox(
            child: Row(
            children: [
              profilImage != null || profilImage !=''
                ? CircleAvatar(
                    radius: 18,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    backgroundImage: AssetImage(profilImage!),
                  )
                :  CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        child: Icon(
                          Icons.person,
                          size: 20,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                   )
                    ,
                    gapW6,
              Text(
            name.capitalize().truncateWithEllipsis(25),
            style: context.textTheme.bodySmall!.copyWith(
              fontSize: 12,
              color: context.colorScheme.tertiary,
            ),
          ),
              
            ],
          ),
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                prise,
                style: context.textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: context.colorScheme.secondaryContainer,
                ),
              ),
              gapW10,
             SizedBox(
              width: 100,
              height: 30,
              child:  ElevatedButton(
                onPressed: btnTap, 
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  backgroundColor: context.colorScheme.onPrimaryContainer,
                ),
                child:Text(
                btnText,
                style: context.textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: context.colorScheme.secondary,
                ),
                )
              ), 
             )
            ],
          )
        ],
      ),
    );
  }
}
