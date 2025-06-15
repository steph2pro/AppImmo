import 'package:flutter/material.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

class ContactForm extends StatelessWidget {
  final void Function({
    required String fullName,
    required String email,
    required String phone,
    required String message,
  }) onSend;

  const ContactForm({super.key, required this.onSend});

  @override
  Widget build(BuildContext context) {
    final fullNameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final messageController = TextEditingController();

    return Column(
      children: [
        const SizedBox(height: 24),

        _buildTextField(
          context: context,
          controller: fullNameController,
          hintText: 'Nom complet',
          icon: Icons.person_outline,
          color: Colors.deepOrangeAccent,
        ),
        const SizedBox(height: 16),

        _buildTextField(
          context: context,
          controller: emailController,
          hintText: ' Addresse Email',
          icon: Icons.email_outlined,
          color: Colors.green,
        ),
        const SizedBox(height: 16),

        _buildTextField(
          context: context,
          controller: phoneController,
          hintText: 'Numero de telephone',
          icon: Icons.lock_outline,
          color: Colors.purple,
        ),
        const SizedBox(height: 16),

        _buildMessageField(
          context: context,
          controller: messageController
          ),
        const SizedBox(height: 32),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              onSend(
                fullName: fullNameController.text,
                email: emailController.text,
                phone: phoneController.text,
                message: messageController.text,
              );
            },
            child: const Text(
              'Envoyer',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    required Color color,
    required BuildContext context,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
              fillColor: context.colorScheme.surface.withOpacity(0.5),
        prefixIcon: Icon(icon, color: color),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildMessageField({required TextEditingController controller,required BuildContext context}) {
    return TextField(
      controller: controller,
      maxLines: 5,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.colorScheme.surface.withOpacity(0.5),
        hintText: 'Contenue de la requette',
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
