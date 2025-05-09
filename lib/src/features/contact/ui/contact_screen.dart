import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/components/forms/input.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

class ContactScreen extends StatelessWidget {
   ContactScreen({super.key});
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Contactez-nous",
          style: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.onPrimary,fontSize: 22),
          ),
        centerTitle: true,
        backgroundColor: context.colorScheme.primary,
        foregroundColor: context.colorScheme.onPrimary,
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo et nom
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/logo.png"),
                  ),
                             gapW16,
                  Text(
                    "École Lumière & Collège",
                    style: theme.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
           gapH20,

            // Coordonnées
             Text("📍 Adresse", style: context.textTheme.titleMedium!.copyWith(color: context.colorScheme.secondary)),
             gapH6,
             Text("Rue des Écoles, Quartier Éducation, Ville XYZ",style: context.textTheme.bodyMedium),

             gapW16,
             Text("📞 Téléphone", style: context.textTheme.titleMedium!.copyWith(color: context.colorScheme.secondary)),
             gapH6,
             Text("+225 07 00 00 00",style: context.textTheme.bodyMedium),

             gapW16,
             Text("📧 Email", style: context.textTheme.titleMedium!.copyWith(color: context.colorScheme.secondary)),
             gapH6,
             Text("contact@ecolelumiere.cm",style: context.textTheme.bodyMedium),

             gapW16,
             Text("⏰ Horaires", style: context.textTheme.titleMedium!.copyWith(color: context.colorScheme.secondary)),
             gapH6,
             Text("Lundi - Vendredi : 07h30 - 17h00",style: context.textTheme.bodyMedium),

            gapH64,

            // Formulaire
             Text("Laissez nous un message", style: context.textTheme.titleLarge!.copyWith(fontSize: 22)),
              gapH16,

            Input(
                  controller: _nameController,
                  keyboardType: TextInputType.text,
                  hintText: 'Nom',
                  labelText: 'Nom',
                  textInputAction: TextInputAction.next,
                ),
                gapH10,
                Input(
                  controller: _emailController,
                  keyboardType: TextInputType.text,
                  hintText: 'Email',
                  labelText: 'Email',
                  textInputAction: TextInputAction.next,
                ),
                gapH10,
                Input(
                  controller: _emailController,
                  keyboardType: TextInputType.text,
                  maxLines: 5,
                  labelText: 'Message',
                  textInputAction: TextInputAction.next,
                ),
            
            gapH20,

            // Bouton
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Logique d’envoi du message
                },
                icon: const Icon(Icons.send),
                label: const Text("Envoyer le message"),
              ),
            ),
            gapH64,
            gapH64,

          ],
        ),
      ),
    );
  }
}
