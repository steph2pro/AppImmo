import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/features/auth/login/ui/login_screen.dart';
import 'package:myschoolapp/src/features/auth/register/ui/register_screen.dart';
import 'package:myschoolapp/src/features/contact/ui/requete_screen.dart';
import 'package:myschoolapp/src/features/home/ui/home_screen.dart';
import 'package:myschoolapp/src/features/immoApp/ui/phone_number_screen.dart';
import 'package:myschoolapp/src/features/immoApp/ui/product_screen.dart';
import 'package:myschoolapp/src/features/onboarding/ui/onboarding_screen.dart';
import 'package:myschoolapp/src/features/home/ui/home_page_screen.dart';
import 'package:myschoolapp/src/features/property/ui/property_details_screen.dart';
import 'package:myschoolapp/src/features/property/ui/propriete_form_screen.dart';
import 'package:myschoolapp/src/features/proprietaire/ui/owner_list_screen.dart';
import 'package:myschoolapp/src/features/proprietaire/ui/properties_owner_screen.dart';
import 'package:myschoolapp/src/features/reservation/ui/reservation_screen.dart';
import 'package:myschoolapp/src/features/seting/ui/notifications_screen.dart';
import 'package:myschoolapp/src/features/seting/ui/settings_screen.dart';
import 'package:myschoolapp/src/features/splash/ui/splash_screen.dart';
import 'package:myschoolapp/src/features/property/logic/models/property_model.dart';
import 'package:myschoolapp/src/features/proprietaire/logic/models/owner_model1.dart';


import 'package:myschoolapp/src/features/property/logic/models/propriete_response.dart';
import 'package:myschoolapp/src/features/proprietaire/logic/models/owner_model.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: HomeRouteRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: PropertyDetailsRoute.page),
        AutoRoute(page: OwnerListRoute.page),
        AutoRoute(page: PropertiesOwnerRoute.page),
        AutoRoute(page: NotificationsRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: ProprieteFormRoute.page),
        AutoRoute(page: PhoneNumberRoute.page),
        AutoRoute(page: ProductRoute.page),
        AutoRoute(page: ContactRoute.page),
        AutoRoute(page: ReservationRoute.page),
      ];
}
