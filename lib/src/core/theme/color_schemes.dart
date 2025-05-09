
import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFFF9800), // 🟠 Orange vif
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFE0B2), // 🟠 Orange clair
  onPrimaryContainer: Color(0xFF4E342E),

  secondary: Color(0xFF2196F3), // 🔵 Bleu doux
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFBBDEFB),
  onSecondaryContainer: Color(0xFF0D47A1),

  tertiary: Color(0xFF212121), // ⚫ Noir profond
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFF5F5F5),
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
  inversePrimary: Color(0xFFFFA726),

  outline: Color(0xFFBDBDBD),
  outlineVariant: Color(0xFFE0E0E0),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFF9800),
  scrim: Color(0xFF000000),
);
 const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB74D), // 🟠 Orange clair pour mode sombre
  onPrimary: Color(0xFF3E2723),
  primaryContainer: Color(0xFFFF9800),
  onPrimaryContainer: Color(0xFF212121),

  secondary: Color(0xFF64B5F6), // 🔵 Bleu clair
  onSecondary: Color(0xFF0D1F2D),
  secondaryContainer: Color(0xFF1565C0),
  onSecondaryContainer: Color(0xFFBBDEFB),

  tertiary: Color(0xFFBDBDBD), // ⚫ Gris clair
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
  inversePrimary: Color(0xFFFF9800),

  outline: Color(0xFF757575),
  outlineVariant: Color(0xFF424242),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB74D),
  scrim: Color(0xFF000000),
);
