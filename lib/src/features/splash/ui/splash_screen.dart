import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:myschoolapp/src/shared/services/user_storage_service.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _checkUserStatus();
  }

  Future<void> _checkUserStatus() async {
    await Future.delayed(const Duration(seconds: 3));

    final userStorage = ref.read(userStorageServiceProvider);
    final userId = await userStorage.getUserId();

    if (userId != null && userId.isNotEmpty) {
      // Utilisateur connecté -> home
      context.replaceRoute(const HomeRouteRoute());
    } else {
      // Pas connecté -> onboarding
      context.replaceRoute(const OnboardingRoute());
    }
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
                "Trouvez la maison ideal pour vous",
                style: context.textTheme.titleLarge!.copyWith(
                  fontSize: 18,
                  color: context.colorScheme.primary,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
