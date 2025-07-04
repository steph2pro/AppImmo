import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/features/auth/register/logic/models/user_request_model.dart';
import 'package:myschoolapp/src/features/auth/register/logic/providers/register_provider.dart';
import 'package:myschoolapp/src/shared/components/buttons/button.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:myschoolapp/src/shared/services/toast_service.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _contactController = TextEditingController();
  final _passwordController = TextEditingController();

  File? _selectedImage;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _contactController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showImageSourceDialog() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choisir depuis la galerie'),
                onTap: () async {
                  Navigator.pop(context);
                  final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
                  if (picked != null) {
                    setState(() {
                      _selectedImage = File(picked.path);
                    });
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Prendre une photo'),
                onTap: () async {
                  Navigator.pop(context);
                  final picked = await ImagePicker().pickImage(source: ImageSource.camera);
                  if (picked != null) {
                    setState(() {
                      _selectedImage = File(picked.path);
                    });
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _register() async {
    final uuid = const Uuid().v4();

    final user = UserRequestModel(
      id: uuid,
      nom: _usernameController.text.trim(),
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
      contact: _contactController.text.trim(),
      role: "user",
    );

    await ref.read(registerProvider.notifier).register(user, _selectedImage);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registerProvider);

    // Écoute des changements d'état
    ref.listen(registerProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          ToastService.showSuccess("Inscription réussie", context: context);
          context.router.push(const LoginRoute());
        },
        error: (err, _) {
          ToastService.showError("Erreur : ${err.toString()}", context: context);
          print("*************error ************");
          print(err.toString());
        },
      );
    });

    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: _selectedImage != null ? FileImage(_selectedImage!) : null,
                      backgroundColor: Colors.grey[200],
                      child: _selectedImage == null
                          ? Icon(Icons.person, size: 60, color: Colors.grey[600])
                          : null,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: _showImageSourceDialog,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.7),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: const Icon(Icons.edit, color: Colors.white, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Créer un compte",
                      style: context.textTheme.titleMedium?.copyWith(fontSize: 24),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          _buildInputField(
                            controller: _usernameController,
                            hintText: "Nom et prénom",
                            icon: Icons.person_outline,
                            iconColor: Colors.orange,
                          ),
                          const SizedBox(height: 16),
                          _buildInputField(
                            controller: _emailController,
                            hintText: "Email",
                            icon: Icons.email_outlined,
                            iconColor: Colors.green,
                          ),
                          const SizedBox(height: 16),
                          _buildInputField(
                            controller: _contactController,
                            hintText: "Numéro WhatsApp",
                            icon: Icons.phone_outlined,
                            iconColor: Colors.blue,
                          ),
                          const SizedBox(height: 16),
                          _buildInputField(
                            controller: _passwordController,
                            hintText: "Mot de passe",
                            icon: Icons.lock_outline,
                            iconColor: Colors.deepPurple,
                            obscureText: true,
                          ),
                          const SizedBox(height: 32),
                          Button.primary(
                            title: 'Enregistrer',
                            onPressed: state.isLoading ? null : _register,
                          ),
                        Expanded(
                          child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vous avez deja un compte ?",
                            style: context.textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              context.router.push(const LoginRoute());
                            },
                            child: Text(
                              " Se connecter",
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: context.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                        )
                        ],
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

  Widget _buildInputField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    required Color iconColor,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: iconColor),
        hintText: hintText,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
