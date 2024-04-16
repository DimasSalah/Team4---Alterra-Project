import 'package:flutter/material.dart';
import 'package:team4_alterra/pages/favorites/screeens/favorites_pages.dart';
import 'package:team4_alterra/pages/main/main_view.dart';

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
      home: const FavoritesPages(),
    );
  }
}
