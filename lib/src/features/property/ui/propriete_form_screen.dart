import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/features/property/ui/widgets/propriete_form.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
@RoutePage()
class ProprieteFormScreen extends StatelessWidget {
  const ProprieteFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
        title: Text(
                  "Ajouter une propriete",
                  style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.onSurface,fontSize: 20)
                ),),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ProprieteForm(),
      ),
    );
  }
}
