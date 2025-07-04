import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Saisie Téléphone")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntlPhoneField(
          decoration: const InputDecoration(
            labelText: 'Numéro de téléphone',
            border: OutlineInputBorder(),
          ),
          initialCountryCode: 'CM', // Exemple: 'CM' pour Cameroun
          onChanged: (phone) {
            print('Numéro complet : ${phone.completeNumber}');
            print('Code pays : ${phone.countryCode}');
            print('Numéro sans code pays : ${phone.number}');
          },
        ),
      ),
    );
  }
}
