import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/features/contact/ui/requete_screen.dart';
import 'package:myschoolapp/src/features/home/ui/home_screen.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/accessDeneidDialog.dart';
import 'package:myschoolapp/src/features/property/logic/services/whatsapp_service.dart';
import 'package:myschoolapp/src/features/proprietaire/ui/owner_list_screen.dart';
import 'package:myschoolapp/src/features/seting/ui/settings_screen.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:myschoolapp/src/shared/services/user_storage_service.dart';

@RoutePage()
class HomePageScreen extends ConsumerStatefulWidget {
  const HomePageScreen({super.key});

  @override
  ConsumerState<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends ConsumerState<HomePageScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    OwnerListScreen(),
    ContactScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _handleAddButtonPressed(BuildContext context) async {
    final userStorage = ref.read(userStorageServiceProvider);
    final role = await userStorage.getRole();

    if (role != 'propriétaire') {
      // Rôle non autorisé, affichage dialog
      showDialog(
        context: context,
        builder: (context) => AccessDeniedDialog(
          onContactPressed: () async {
            Navigator.of(context).pop(); // Fermer le dialog avant d’ouvrir WhatsApp
            try {
              await WhatsappService.contactAdmin(
                '237671506217', // Remplace par le numéro de téléphone de l’admin
                'Bonjour, je souhaite demander un accès pour ajouter une propriété.',
              );
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Impossible d'ouvrir WhatsApp")),
              );
            }
          },
        ),
      );
    } else {
      // Rôle correct, navigation vers formulaire ajout
      context.pushRoute(const ProprieteFormRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 30),
        child: FloatingActionButton(
          backgroundColor: colorScheme.primary,
          onPressed: () => _handleAddButtonPressed(context),
          shape: const CircleBorder(),
          child: const Icon(Icons.add, size: 28, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
