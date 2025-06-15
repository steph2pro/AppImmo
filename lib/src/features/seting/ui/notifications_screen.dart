import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import './widgets/notification_tile.dart';
@RoutePage()
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(
          "Notification", 
            style:  context.textTheme.titleMedium?.copyWith(fontSize: 20,color: context.colorScheme.onSurface,fontWeight: FontWeight.w700 ),
            textAlign: TextAlign.center,
            ),
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
        elevation: 0,
      ),
      // backgroundColor: context.colorScheme.onSurface.withOpacity(0.1),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            NotificationTile(
              sender: "Broker",
              message: "There is a Proposal",
              color: Colors.deepPurple,
            ),
            NotificationTile(
              sender: "Seller",
              message: "There is a Proposal",
              color: Colors.orange,
            ),
            NotificationTile(
              sender: "Offer",
              message: "Claim your 50% Off",
              color: Colors.red,
            ),
            NotificationTile(
              sender: "Broker",
              message: "35% off for you",
              color: Colors.teal,
            ),
            NotificationTile(
              sender: "Broker",
              message: "There is a Proposal",
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
