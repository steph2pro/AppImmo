import 'package:flutter/material.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'contact_form.dart'; // Assurez-vous que ce fichier est importé correctement

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
      body: Column(
        children: [
          Container(
            decoration:  BoxDecoration(
              color: context.colorScheme.primary,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(32),
              ),
            ),
            padding: const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                // Icon(Icons.arrow_back, color: Colors.white),
                SizedBox(width: 16),
                Text(
                  "Faire une requete a l'administrateur",
                  style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.onPrimary,fontSize: 20)
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ContactForm(
                onSend: ({
                  required String fullName,
                  required String email,
                  required String phone,
                  required String message,
                }) {
                  // Ici vous pouvez afficher une Snackbar, ou envoyer à un backend
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Envoyé par $fullName ($email)"),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
