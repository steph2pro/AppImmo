// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ContactRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactScreen(),
      );
    },
    HomeRouteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePageScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    OwnerListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OwnerListScreen(),
      );
    },
    PhoneNumberRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhoneNumberScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductScreen(),
      );
    },
    PropertiesOwnerRoute.name: (routeData) {
      final args = routeData.argsAs<PropertiesOwnerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PropertiesOwnerScreen(
          key: args.key,
          owner: args.owner,
        ),
      );
    },
    PropertyDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PropertyDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PropertyDetailsScreen(
          key: args.key,
          property: args.property,
        ),
      );
    },
    ProprieteFormRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProprieteFormScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    ReservationRoute.name: (routeData) {
      final args = routeData.argsAs<ReservationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ReservationScreen(
          key: args.key,
          propriete: args.propriete,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [ContactScreen]
class ContactRoute extends PageRouteInfo<void> {
  const ContactRoute({List<PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePageScreen]
class HomeRouteRoute extends PageRouteInfo<void> {
  const HomeRouteRoute({List<PageRouteInfo>? children})
      : super(
          HomeRouteRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationsScreen]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OwnerListScreen]
class OwnerListRoute extends PageRouteInfo<void> {
  const OwnerListRoute({List<PageRouteInfo>? children})
      : super(
          OwnerListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OwnerListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhoneNumberScreen]
class PhoneNumberRoute extends PageRouteInfo<void> {
  const PhoneNumberRoute({List<PageRouteInfo>? children})
      : super(
          PhoneNumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneNumberRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<void> {
  const ProductRoute({List<PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PropertiesOwnerScreen]
class PropertiesOwnerRoute extends PageRouteInfo<PropertiesOwnerRouteArgs> {
  PropertiesOwnerRoute({
    Key? key,
    required OwnerModel owner,
    List<PageRouteInfo>? children,
  }) : super(
          PropertiesOwnerRoute.name,
          args: PropertiesOwnerRouteArgs(
            key: key,
            owner: owner,
          ),
          initialChildren: children,
        );

  static const String name = 'PropertiesOwnerRoute';

  static const PageInfo<PropertiesOwnerRouteArgs> page =
      PageInfo<PropertiesOwnerRouteArgs>(name);
}

class PropertiesOwnerRouteArgs {
  const PropertiesOwnerRouteArgs({
    this.key,
    required this.owner,
  });

  final Key? key;

  final OwnerModel owner;

  @override
  String toString() {
    return 'PropertiesOwnerRouteArgs{key: $key, owner: $owner}';
  }
}

/// generated route for
/// [PropertyDetailsScreen]
class PropertyDetailsRoute extends PageRouteInfo<PropertyDetailsRouteArgs> {
  PropertyDetailsRoute({
    Key? key,
    required ProprieteResponse property,
    List<PageRouteInfo>? children,
  }) : super(
          PropertyDetailsRoute.name,
          args: PropertyDetailsRouteArgs(
            key: key,
            property: property,
          ),
          initialChildren: children,
        );

  static const String name = 'PropertyDetailsRoute';

  static const PageInfo<PropertyDetailsRouteArgs> page =
      PageInfo<PropertyDetailsRouteArgs>(name);
}

class PropertyDetailsRouteArgs {
  const PropertyDetailsRouteArgs({
    this.key,
    required this.property,
  });

  final Key? key;

  final ProprieteResponse property;

  @override
  String toString() {
    return 'PropertyDetailsRouteArgs{key: $key, property: $property}';
  }
}

/// generated route for
/// [ProprieteFormScreen]
class ProprieteFormRoute extends PageRouteInfo<void> {
  const ProprieteFormRoute({List<PageRouteInfo>? children})
      : super(
          ProprieteFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProprieteFormRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReservationScreen]
class ReservationRoute extends PageRouteInfo<ReservationRouteArgs> {
  ReservationRoute({
    Key? key,
    required ProprieteModel propriete,
    List<PageRouteInfo>? children,
  }) : super(
          ReservationRoute.name,
          args: ReservationRouteArgs(
            key: key,
            propriete: propriete,
          ),
          initialChildren: children,
        );

  static const String name = 'ReservationRoute';

  static const PageInfo<ReservationRouteArgs> page =
      PageInfo<ReservationRouteArgs>(name);
}

class ReservationRouteArgs {
  const ReservationRouteArgs({
    this.key,
    required this.propriete,
  });

  final Key? key;

  final ProprieteModel propriete;

  @override
  String toString() {
    return 'ReservationRouteArgs{key: $key, propriete: $propriete}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
