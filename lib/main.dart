import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/features/immoApp/logic/provders/FavoriteProvider.dart';
import 'package:myschoolapp/src/features/immoApp/logic/provders/PropertyProvider.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // ✅ Import Supabase

import 'package:provider/provider.dart' as prov; // alias "prov" pour le package "provider"
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/core/theme/app_theme.dart'; // adapte le chemin selon ton projet

final _appRouter = AppRouter();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Initialise Supabase
  await Supabase.initialize(
    url: 'https://wbrsjglfvrghqbyxrssb.supabase.co', // remplace par ton URL
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndicnNqZ2xmdnJnaHFieXhyc3NiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTA1ODE3ODIsImV4cCI6MjA2NjE1Nzc4Mn0.mLJn-DsFmtixlOX336LoleYaX5EVgajwD-hzu6Y_jcY', // remplace par ta clé publique
  );

  runApp(
    MultiProvider(
      providers: [
    prov.ChangeNotifierProvider(create: (_) => PropertyProvider()),
    prov.ChangeNotifierProvider(create: (_) => FavoriteProvider()..initFavorites()),
      ],
      child: const ProviderScope(
        child: MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}


