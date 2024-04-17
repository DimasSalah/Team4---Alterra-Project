import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:team4_alterra/pages/shop/components/tab_item.dart';
import 'package:team4_alterra/pages/shop/data/men_categories.dart';
import 'package:team4_alterra/pages/shop/data/women_categories.dart';
import 'package:team4_alterra/pages/shop/test.dart';
import 'package:team4_alterra/theme/colors.dart';
import 'package:team4_alterra/theme/text_styles.dart';

import 'components/discount_card.dart';
import 'data/kids_categories.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Categories"),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.search)),
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TabBar(
                tabs: [
                  TabItem(
                    title: 'Women',
                    textStyle: TextStyle(fontSize: 16),
                  ),
                  TabItem(
                    title: 'Men',
                    textStyle: TextStyle(fontSize: 16),
                  ),
                  TabItem(
                    title: 'Kids',
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                const DiscountCard(
                  discount: '35',
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: womenCategories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                womenCategories[index].categories,
                                textAlign: TextAlign.left,
                                style: semiBold.copyWith(fontSize: 18),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              child: Image.asset(
                                womenCategories[index].image,
                                width: 150,
                                height: 100,
                                fit: BoxFit
                                    .cover,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DiscountCard(
                  discount: '50',
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: menCategories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                menCategories[index].categories,
                                textAlign: TextAlign.left,
                                style: semiBold.copyWith(fontSize: 18),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              child: Image.asset(
                                menCategories[index].image,
                                width: 150,
                                height: 100,
                                fit: BoxFit
                                    .cover, 
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const CustomCard(),
                Expanded(
                  child: ListView.builder(
                    itemCount: kidsCategories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                kidsCategories[index].categories,
                                textAlign: TextAlign.left,
                                style: semiBold.copyWith(fontSize: 18, color: white),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              child: Image.asset(
                                kidsCategories[index].image,
                                width: 150,
                                height: 100,
                                fit: BoxFit
                                    .cover, 
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ])),
    );
  }
}
