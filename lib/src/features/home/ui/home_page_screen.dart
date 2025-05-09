import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myschoolapp/src/features/contact/ui/contact_screen.dart';
import 'package:myschoolapp/src/features/home/ui/home_screen.dart';
import 'package:myschoolapp/src/features/infrastructure/ui/infrastructure_screen.dart';
import 'package:myschoolapp/src/features/resultats/ui/resultat_screen.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  
  void _openWhatsApp() async {
    final Uri url = Uri.parse("https://wa.me/+237671506217"); 
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Impossible d\'ouvrir WhatsApp';
    }
  }
  int _selectedIndex = 0;

  final List<Widget> _pages =  [
    HomeScreen(),
    ResultatScreen(),
    InfrastructureScreen(),
    ContactScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton:  _selectedIndex == 3
    ? FloatingActionButton.extended(
        backgroundColor: Colors.green[600],
        onPressed: _openWhatsApp,
        shape: const StadiumBorder(),
        icon: const Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white, size: 32),
        label: Text(
          'Discuter avec nous sur Whatsap',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: context.colorScheme.onPrimary),
        ),
      )

    :
      FloatingActionButton(
        onPressed: _openWhatsApp,
        backgroundColor: Colors.green[600],
        child: const Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // selectedItemColor: Colors.teal,
        backgroundColor: context.colorScheme.tertiary,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.grade), label: 'Résultats'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Infrastructures'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),
        ],
      ),
    );
  }
}

