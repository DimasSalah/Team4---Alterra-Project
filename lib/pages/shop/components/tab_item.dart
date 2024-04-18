import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;
  final TextStyle textStyle;

  const TabItem({
    super.key,
    required this.title,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
