
// lib/src/shared/services/toast_service.dart

import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class ToastService {
  static void showSuccess(String message, {BuildContext? context}) {
    _showFlushbar(
      message,
      context: context,
      backgroundColor: Colors.green,
      icon: Icons.check_circle,
    );
  }

  static void showError(String message, {BuildContext? context}) {
    _showFlushbar(
      message,
      context: context,
      backgroundColor: Colors.red,
      icon: Icons.error,
    );
  }

  static void _showFlushbar(
    String message, {
    required Color backgroundColor,
    required IconData icon,
    BuildContext? context,
  }) {
    if (context == null) return;

    Flushbar(
      message: message,
      duration: const Duration(seconds: 3),
      backgroundColor: backgroundColor,
      icon: Icon(icon, color: Colors.white),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    ).show(context);
  }
}

// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class ToastService {
//   static void showSuccess(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.green,
//       textColor: Colors.white,
//       gravity: ToastGravity.BOTTOM,
//       toastLength: Toast.LENGTH_LONG,
//     );
//   }

//   static void showError(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       gravity: ToastGravity.BOTTOM,
//       toastLength: Toast.LENGTH_LONG,
//     );
//   }
// }
