import 'package:flutter/material.dart';
import 'package:team4_alterra/theme/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Positioned(
          bottom: 0, 
          right: 20,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
