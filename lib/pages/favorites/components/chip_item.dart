import 'package:flutter/material.dart';
import 'package:team4_alterra/theme/colors.dart';
import 'package:team4_alterra/theme/text_styles.dart';

class ChipItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(bool) onSelect;

  const ChipItem({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ChoiceChip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
        backgroundColor: black,
        selectedColor: primary,
        label: Text(
          label,
          style: medium.copyWith(fontSize: 14, color: white),
        ),
        selected: isSelected,
        onSelected: onSelect,
      ),
    );
  }
}
