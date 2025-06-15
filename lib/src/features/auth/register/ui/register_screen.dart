import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/components/buttons/button.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

@RoutePage()

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.colorScheme.primary,
      body: ListView(
        children: [
          
          // Top section (Logo + Background color)
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                // Image.asset(
                //   "assets/images/logo.png",
                //   width: 60,
                //   height: 60,
                // ), // Replace with your logo
                // SizedBox(width: 10),
                // Text(
                //   "ImmoGestion",
                //   style: context.textTheme.titleLarge?.copyWith(fontSize: 24,color: context.colorScheme.onPrimary )

                // ),
              ],
            ),
          ),
          
          const SizedBox(height: 30),
Expanded(child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
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
                "Create Acount",
                style: context.textTheme.titleMedium?.copyWith(fontSize: 24,color: context.colorScheme.onSurface )
              ),
              const SizedBox(height: 20),

          // Input Fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                _buildInputField(
                  hintText: "Username",
                  icon: Icons.person_outline,
                  iconColor: Colors.orange,
                ),
                const SizedBox(height: 16),
                _buildInputField(
                  hintText: "Email",
                  icon: Icons.email_outlined,
                  iconColor: Colors.green,
                ),
                const SizedBox(height: 16),
                _buildInputField(
                  hintText: "Password",
                  icon: Icons.lock_outline,
                  iconColor: Colors.deepPurple,
                  obscureText: true,
                ),

               gapH64,
               gapH64,

          // Register Button
          Button.primary(
                  title:  'Register',
                  onPressed: (){
                    context.router.push(const HomeRouteRoute());
                  },
                ),
              ],
            ),
          ),

          

          const SizedBox(height: 30),

          // Social Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _SocialIcon(icon: Icons.facebook, color: Colors.blue),
              SizedBox(width: 20),
              _SocialIcon(icon: Icons.g_mobiledata, color: Colors.red),
              SizedBox(width: 20),
              _SocialIcon(icon: Icons.apple, color: Colors.black),
            ],
          )
        ],
      ),
      )
)
  ])
    );
  }

  Widget _buildInputField({
    required String hintText,
    required IconData icon,
    required Color iconColor,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: iconColor),
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
  final IconData icon;
  final Color color;

  const _SocialIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white,
      child: Icon(icon, size: 28, color: color),
    );
  }
}
