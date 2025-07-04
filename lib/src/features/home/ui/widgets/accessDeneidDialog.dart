import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccessDeniedDialog extends StatelessWidget {
  final VoidCallback onContactPressed;

  const AccessDeniedDialog({super.key, required this.onContactPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Accès refusé'),
      content: const Text(
          'Vous n\'avez pas les droits nécessaires pour ajouter une propriété. '
          'Veuillez contacter l\'administrateur pour obtenir les accès.'),
      actions: [
        TextButton.icon(
          onPressed: onContactPressed,
          icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green),
          label: const Text('Contacter Admin'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Annuler'),
        ),
      ],
    );
  }
}
