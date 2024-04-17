import 'package:flutter/material.dart';
import 'package:team4_alterra/pages/shop/shop_view.dart';

import 'theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      home: const ShopView(),
    );
  }
}
