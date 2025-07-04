// login_screen.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/shared/components/buttons/button.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:myschoolapp/src/shared/services/toast_service.dart';
import 'package:myschoolapp/src/features/auth/login/logic/providers/login_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  void _login() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    ref.read(loginProvider.notifier).login(email, password);
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loginProvider).isLoading;
    
    ref.listen<AsyncValue<void>>(loginProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          ToastService.showSuccess('Connexion réussie', context: context);
          context.router.replace(const HomeRouteRoute());
        },
        error: (err, _) {
          String errorMessage = "Une erreur est survenue";

          if (err is AuthApiException) {
            // Messages custom pour Supabase Auth errors
            if (err.statusCode == 400 && err.code == 'invalid_credentials') {
              errorMessage = "Email ou mot de passe incorrect.";
            } else {
              errorMessage = err.message ?? errorMessage;
            }
          } else if (err is Exception) {
            errorMessage = err.toString();
          }

          ToastService.showError(errorMessage, context: context);
        },
      );
    });

    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 100),
              Center(
                child: Column(
                  children: [
                    Image.asset("assets/images/logo.png", width: 60, height: 60),
                    const SizedBox(height: 10),
                    Text(
                      "MyProperties",
                      style: context.textTheme.titleLarge?.copyWith(
                        fontSize: 24,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Connexion",
                        style: context.textTheme.titleMedium?.copyWith(
                          fontSize: 24,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildInputField(
                        hintText: "Email",
                        icon: Icons.email_outlined,
                        controller: _emailController,
                      ),
                      const SizedBox(height: 16),
                      _buildInputField(
                        hintText: "Mot de passe",
                        icon: Icons.lock_outline,
                        controller: _passwordController,
                        obscureText: true,
                      ),
                      const SizedBox(height: 30),
                      Button.primary(
                        title: 'Se connecter',
                        onPressed: isLoading ? null : _login,
                      ),
                      // Message pour créer un compte
                      Expanded(
                        child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pas encore de compte ?",
                            style: context.textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              context.router.push(const RegisterRoute());
                            },
                            child: Text(
                              "Créer un compte",
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: context.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }

  Widget _buildInputField({
    required String hintText,
    required IconData icon,
    required TextEditingController controller,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.deepOrangeAccent),
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
