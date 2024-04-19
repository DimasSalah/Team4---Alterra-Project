import 'package:flutter/material.dart';
import 'package:team4_alterra/pages/profile/screens/profile_screen.dart';

import 'theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      home: const ProfileScreen(),
    );
  }
}
