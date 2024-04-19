import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/text_styles.dart';


class DiscountCard extends StatelessWidget {
  final String discount;
  const DiscountCard({
    required this.discount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Summer Sale',
              textAlign: TextAlign.center,
              style: semiBold.copyWith(fontSize: 24, color: white),
            ),
            Text(
              'Up to $discount% off',
              textAlign: TextAlign.center,
              style: medium.copyWith(fontSize: 14, color: white),
            ),
        ],
      ),
    );
  }
}
