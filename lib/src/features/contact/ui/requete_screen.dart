import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/features/contact/logic/providers/contact_request_provider.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:myschoolapp/src/shared/services/toast_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@RoutePage()
class ContactScreen extends ConsumerStatefulWidget {
  const ContactScreen({super.key});

  @override
  ConsumerState<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends ConsumerState<ContactScreen> {
  final objetController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    objetController.dispose();
    messageController.dispose();
    super.dispose();
  }

  void _sendRequest() async {
    final objet = objetController.text.trim();
    final contenu = messageController.text.trim();

    if (objet.isEmpty || contenu.isEmpty) {
      ToastService.showError("Veuillez remplir tous les champs", context: context);
      return;
    }
    print("$objet,$contenu");
    await ref.read(contactRequestProvider.notifier).sendRequest(
          objet: objet,
          contenu: contenu,
        );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(contactRequestProvider);

    ref.listen(contactRequestProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          ToastService.showSuccess("Requête envoyée avec succès", context: context);
          objetController.clear();
          messageController.clear();
        },
        error: (err, _) {
        String message = "Une erreur est survenue. Veuillez réessayer.";

        if (err is PostgrestException && err.message.isNotEmpty) {
          message = err.message;
        } else if (err is AuthException && err.message.isNotEmpty) {
          message = err.message;
        } else if (err is StorageException && err.message.isNotEmpty) {
          message = err.message;
        } else if (err is Exception) {
          message = err.toString().replaceAll("Exception:", "").trim();
        }

        ToastService.showError(message, context: context);
      },

      );
    });

    return Scaffold(
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(32)),
                ),
                padding: const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 16),
                    Text(
                      "Faire une requête à l'administrateur",
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    _buildTextField(
                      context: context,
                      controller: objetController,
                      hintText: 'Objet de la requête',
                      icon: Icons.emoji_objects_outlined,
                      color: Colors.purple,
                    ),
                    const SizedBox(height: 16),
                    _buildMessageField(
                      context: context,
                      controller: messageController,
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
                        onPressed: state.isLoading ? null : _sendRequest,
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
                ),
              )
            ],
          ),
          if (state.isLoading)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
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

  Widget _buildMessageField({
    required TextEditingController controller,
    required BuildContext context,
  }) {
    return TextField(
      controller: controller,
      maxLines: 5,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.colorScheme.surface.withOpacity(0.5),
        hintText: 'Contenu de la requête',
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
