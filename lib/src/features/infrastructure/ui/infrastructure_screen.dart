import 'package:flutter/material.dart';
import 'package:myschoolapp/src/features/infrastructure/models/infrastructure_data.dart';
import 'package:myschoolapp/src/shared/components/home_components/infrastructure_component.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

class InfrastructureScreen extends StatelessWidget {
  

  InfrastructureScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(
        title:  Text(
          "Infrastructure Scolaires",
          style: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.onPrimary,fontSize: 22),
          ),
        centerTitle: true,
        backgroundColor: context.colorScheme.primary,
        foregroundColor: context.colorScheme.onPrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: 
          
        
          ListView.builder(
            itemCount: infrastructuresList.length,
            itemBuilder: (context, index) {
              final infra = infrastructuresList[index];
              return InfrastructureComponent(
                title: infra.title,
                star: infra.star,
                contentImage: infra.contentImage,
                profilImage: infra.profilImage,
                name: infra.name,
                prise: infra.prise,
                btnText: infra.btnText,
                btnTap: () {
                  // Action personnalisée
                },
              );
            },
          )
            )
        ],
      ),
    );
  }
}

