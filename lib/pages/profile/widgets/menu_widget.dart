import 'package:flutter/material.dart';
import 'package:team4_alterra/theme/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const MenuWidget({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: bold.copyWith(fontSize: 19),
            ),
            Text(
              subtitle,
              style: regular.copyWith(fontSize: 14),
            ),
          ],
        ),
        trailing: SvgPicture.asset(
          'assets/icons/shape.svg',
          width: 24,
          height: 24,
        ),
        onTap: () {
          // Handle onTap
        },
      ),
    );
  }
}
