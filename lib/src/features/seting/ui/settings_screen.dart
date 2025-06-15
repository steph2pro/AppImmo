import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import './widgets/setting_tile.dart';
@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Parametres", 
            style:  context.textTheme.titleMedium?.copyWith(fontSize: 20,color: context.colorScheme.onSurface,fontWeight: FontWeight.w700 )
            ),
        // elevation: 0,
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children:  [
            SettingTile(
              icon: Icons.person,
              title: "Personal Profile",
              backgroundColor: Colors.deepPurple,
            ),
            SettingTile(
              icon: Icons.lock_outline,
              title: "Change Password",
              backgroundColor: Colors.green,
            ),
            SettingTile(
              icon: Icons.privacy_tip_outlined,
              title: "Privacy Policy",
              backgroundColor: Colors.redAccent,
            ),
            SettingTile(
              icon: Icons.data_usage,
              title: "Data Saver",
              backgroundColor: Colors.teal,
            ),
            SettingTile(
              icon: Icons.notifications_none,
              title: "Notification",
              backgroundColor: Colors.indigo,
              onTap: () {
                context.pushRoute(
                  const NotificationsRoute(),
                );
              },
            ),
            SettingTile(
              icon: Icons.logout,
              title: "Log Out",
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
