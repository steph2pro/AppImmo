// lib/src/shared/services/whatsapp_service.dart

import 'package:url_launcher/url_launcher.dart';

class WhatsappService {
  static Future<void> contactOwner({required String phone, String? message}) async {
    final text = Uri.encodeComponent(message ?? 'Bonjour, je suis intéressé par votre propriété.');
    final url = Uri.parse('https://wa.me/$phone?text=$text');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Impossible d\'ouvrir WhatsApp.';
    }
  }
  static Future<void> contactAdmin(String phone, String message) async {
    final url = Uri.parse('https://wa.me/$phone?text=${Uri.encodeComponent(message)}');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Impossible d’ouvrir WhatsApp';
    }
  }
}
