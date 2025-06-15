import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/components/buttons/button.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: context.colorScheme.primary,
      body: ListView(
        children: [
          
          // Top section (Logo + Background color)
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.asset(
                  "assets/images/logo.png",
                  width: 60,
                  height: 60,
                ), // Replace with your logo
                SizedBox(width: 10),
                Text(
                  "ImmoGestion",
                  style: context.textTheme.titleLarge?.copyWith(fontSize: 24,color: context.colorScheme.onPrimary )

                ),
              ],
            ),
          ),
          
          Expanded(child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            decoration:  BoxDecoration(
              color: context.colorScheme.surface, // Violet
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: 
           
            Column(
              children: [
                const SizedBox(height: 30),
               Text(
                "Login",
                style: context.textTheme.titleMedium?.copyWith(fontSize: 24,color: context.colorScheme.onSurface )
              ),
              const SizedBox(height: 20),

          // Username & Password Fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                _buildInputField(
                  hintText: "Username",
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 16),
                _buildInputField(
                  hintText: "Password",
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
              ],
            ),
          ),

          gapH20,
          gapH20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                TextButton(
                    onPressed: (){
                      // context.router.push(const HomeRouteRoute());
                    }, 
                    child: Text(
                      'Forget Password?',
                      style: context.textTheme.bodySmall!.copyWith(fontSize: 16,color: context.colorScheme.primary )
                    ),
                  ),
                // Text(""),
                 // Login Button
                 SizedBox(
                  width: 150,
                  child: Button.primary(
                  title:  'Login',
                  onPressed: (){
                    context.router.push(const RegisterRoute());
                  },
                ) ,
                 )
                
              ],
            ),
          ),
          const SizedBox(height: 30),

          // Social Media Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _SocialIcon(asset: Icons.facebook, color: Colors.blue),
              SizedBox(width: 20),
              _SocialIcon(asset: Icons.g_mobiledata, color: Colors.red),
              SizedBox(width: 20),
              _SocialIcon(asset: Icons.apple, color: Colors.black),
            ],
          )
              ],
            )
             )
          )
          
        ],
      ),
    );
  }

  Widget _buildInputField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.deepOrangeAccent),
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData asset;
  final Color color;

  const _SocialIcon({required this.asset, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
      child: Icon(asset, size: 28, color: color),
    );
  }
}
