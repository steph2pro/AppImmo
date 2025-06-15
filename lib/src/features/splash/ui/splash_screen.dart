import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkUserStatus();
  }

  // Redirige vers la page d'onboarding après un délai
  void _checkUserStatus() {
    Future.delayed(const Duration(seconds: 10), () {
      context.replaceRoute(const OnboardingRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Centré verticalement et horizontalement
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: double.infinity,
              // height: 60,
            ),
            gapH16,
            Center(
              child: Text(
                "Trouvez la maison de vos reve",
                style: context.textTheme.titleLarge!.copyWith(fontSize: 18, color: context.colorScheme.secondary ),
              ),
            )
           
          ],
        ),
      ),
    );
  }
}
