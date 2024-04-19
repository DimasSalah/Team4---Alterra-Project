import 'package:flutter/material.dart';
import 'package:team4_alterra/theme/colors.dart';
import 'package:team4_alterra/theme/text_styles.dart';
import 'package:team4_alterra/pages/profile/widgets/menu_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'My profile',
                style: bold.copyWith(fontSize: 34),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 30),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Matilda Brown',
                        style: bold.copyWith(fontSize: 20),
                      ),
                      Text(
                        'matildabrown@mail.com',
                        style: regular.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // List of menu items
            const MenuWidget(
              title: 'My orders',
              subtitle: 'Already have 12 orders',
            ),
            const MenuWidget(
              title: 'Shipping addresses',
              subtitle: '3 ddresses',
            ),
            const MenuWidget(
              title: 'Payment methods',
              subtitle: 'Visa  **34',
            ),
            const MenuWidget(
              title: 'Promocodes',
              subtitle: 'You have special promocodes',
            ),
            const MenuWidget(
              title: 'My reviews',
              subtitle: 'Reviews for 4 items',
            ),
            const MenuWidget(
              title: 'Settings',
              subtitle: 'Notifications, password',
            ),
          ],
        ),
      ),
    );
  }
}
