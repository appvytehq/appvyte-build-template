import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'navigation/app_router.dart';
import 'navigation/main_navigation.dart';

void main() {
  runApp(const TechCrunchGoApp());
}

class TechCrunchGoApp extends StatelessWidget {
  const TechCrunchGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechCrunch Go',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const MainNavigation(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
