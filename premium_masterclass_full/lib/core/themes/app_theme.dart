import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: const Color(0xFF4A148C),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF4A148C),
      secondary: Color(0xFF7C4DFF),
      background: Color(0xFFF6F5FB),
      surface: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xFFF6F5FB),
    fontFamily: 'Cairo',
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF7C4DFF),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF7C4DFF),
      secondary: Color(0xFF00E5FF),
      background: Color(0xFF0C0C0C),
      surface: Color(0xFF121212),
    ),
    scaffoldBackgroundColor: const Color(0xFF0C0C0C),
    fontFamily: 'Cairo',
  );
}
