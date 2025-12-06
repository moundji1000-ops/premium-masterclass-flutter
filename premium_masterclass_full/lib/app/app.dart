import 'package:flutter/material.dart';
import 'package:premium_masterclass_full/app/app_router.dart';
import 'package:premium_masterclass_full/core/themes/app_theme.dart';

class MasterClassApp extends StatelessWidget {
  const MasterClassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MasterClass EDU - Premium',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
