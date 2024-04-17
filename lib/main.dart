import 'package:flutter/material.dart';
import 'package:team4_alterra/pages/bag/screens/bag_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(colorScheme: const ColorScheme.light(primary: Colors.black)),
      debugShowCheckedModeBanner: false,
      home: MyBagPage(),
    );
  }
}
