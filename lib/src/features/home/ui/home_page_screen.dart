import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/features/contact/ui/contact_screen.dart';
import 'package:myschoolapp/src/features/home/ui/home_screen.dart';
import 'package:myschoolapp/src/features/infrastructure/ui/infrastructure_screen.dart';
import 'package:myschoolapp/src/features/proprietaire/ui/owner_list_screen.dart';
import 'package:myschoolapp/src/features/seting/ui/settings_screen.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

@RoutePage()
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    OwnerListScreen(),
    // InfrastructureScreen(),
    ContactScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return Scaffold(
      body: _pages[_selectedIndex],

      // 👇 FAB descendu plus bas
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 30),
        child: FloatingActionButton(
          backgroundColor: colorScheme.primary,
          onPressed: () {
            // Action du bouton
          },
          shape: const CircleBorder(),
          child: const Icon(Icons.apps, size: 28, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 👇 Bottom Navigation avec style
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10),
          ],
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.transparent,
          notchMargin: 10,
          elevation: 0,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(icon: const Icon(Icons.home), index: 0),
                _buildNavItem(
                  icon: const FaIcon(FontAwesomeIcons.userTie, size: 22),
                  index: 1,
                ),
                const SizedBox(width: 40), // espace pour le FAB
                _buildNavItem(icon: const Icon(Icons.chat_bubble_outline), index: 2),
                _buildNavItem(icon: const Icon(Icons.settings), index: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({required Widget icon, required int index}) {
    final bool isSelected = _selectedIndex == index;
    final Color primaryColor = context.colorScheme.primary;
    final Color tertiaryColor = context.colorScheme.tertiaryContainer;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? tertiaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(18),
        ),
        child: IconTheme(
          data: IconThemeData(
            color: primaryColor.withOpacity(isSelected ? 1.0 : 0.6),
            size: 26,
          ),
          child: icon,
        ),
      ),
    );
  }
}
