
import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF2196F3), // 🔵 Bleu devient la couleur primaire
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFBBDEFB),
  onPrimaryContainer: Color(0xFF2CB43C),

  secondary: Color(0xFFFE46826), // 🟠 Orange devient secondaire
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF3F3030),
  onSecondaryContainer: Color(0xFF4E342E),

  tertiary: Color(0xFF212121),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFEFE8DD),
  onTertiaryContainer: Color(0xFF212121),

  error: Color(0xFFD32F2F),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFCDD2),
  onErrorContainer: Color(0xFFB71C1C),

  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF212121),
  surfaceVariant: Color(0xFFF0F0F0),
  onSurfaceVariant: Color(0xFF424242),

  inverseSurface: Color(0xFF212121),
  onInverseSurface: Color(0xFFF5F5F5),
  inversePrimary: Color(0xFF64B5F6), // version inversée du bleu

  outline: Color(0xFFBDBDBD),
  outlineVariant: Color(0xFFE0E0E0),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF2196F3),
  scrim: Color(0xFF000000),
);

 const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF64B5F6), // 🔵 Bleu devient la couleur primaire
  onPrimary: Color(0xFF0D1F2D),
  primaryContainer: Color(0xFF1565C0),
  onPrimaryContainer: Color(0xFFBBDEFB),

  secondary: Color(0xFFFFB74D), // 🟠 Orange devient secondaire
  onSecondary: Color(0xFF3E2723),
  secondaryContainer: Color(0xFFFF9800),
  onSecondaryContainer: Color(0xFF212121),

  tertiary: Color(0xFFBDBDBD),
  onTertiary: Color(0xFF212121),
  tertiaryContainer: Color(0xFF424242),
  onTertiaryContainer: Color(0xFFF5F5F5),

  error: Color(0xFFEF9A9A),
  onError: Color(0xFFB71C1C),
  errorContainer: Color(0xFF8C1D18),
  onErrorContainer: Color(0xFFFFEBEE),

  surface: Color(0xFF121212),
  onSurface: Color(0xFFE0E0E0),
  surfaceVariant: Color(0xFF303030),
  onSurfaceVariant: Color(0xFFBDBDBD),

  inverseSurface: Color(0xFFE0E0E0),
  onInverseSurface: Color(0xFF212121),
  inversePrimary: Color(0xFF2196F3), // version claire du bleu

  outline: Color(0xFF757575),
  outlineVariant: Color(0xFF424242),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF64B5F6),
  scrim: Color(0xFF000000),
);
