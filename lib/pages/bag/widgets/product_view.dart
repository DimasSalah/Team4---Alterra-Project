// ignore: file_names
import 'package:flutter/material.dart';
import 'package:team4_alterra/theme/colors.dart';
import 'package:team4_alterra/theme/text_styles.dart';

class WidgetProduct extends StatelessWidget {
  final String image;
  final String titles;
  final String color;
  final String size;

  const WidgetProduct({
    required this.image,
    required this.titles,
    required this.color,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$titles",
                  maxLines: 1, overflow: TextOverflow.ellipsis, style: regular),
              const SizedBox(
                height: 6.0,
              ),
              Row(
                children: [
                  Text("Color: $color", style: regular),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Size: $size', style: regular)
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: white,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                    ),
                    child: Text("1", style: regular),
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: white,
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 16.0,
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.delete_outline,
                        color: white,
                        size: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
