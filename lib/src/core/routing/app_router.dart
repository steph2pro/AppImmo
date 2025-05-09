import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/features/home/ui/home_screen.dart';
import 'package:myschoolapp/src/features/onboarding/ui/onboarding_screen.dart';
import 'package:myschoolapp/src/features/home/ui/home_page_screen.dart';
import 'package:myschoolapp/src/features/splash/ui/splash_screen.dart';


part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: HomeRouteRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}
