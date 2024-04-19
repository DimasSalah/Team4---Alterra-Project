import 'package:flutter/material.dart';
import 'package:team4_alterra/pages/favorites/components/chip_item.dart';
import 'package:team4_alterra/pages/favorites/components/product_item.dart';
import 'package:team4_alterra/pages/favorites/models/product.dart';
import 'package:team4_alterra/theme/colors.dart';
import 'package:team4_alterra/theme/text_styles.dart';

class FavoritesPages extends StatefulWidget {
  const FavoritesPages({super.key});

  @override
  State<FavoritesPages> createState() => _FavoritesPagesState();
}

class _FavoritesPagesState extends State<FavoritesPages> {
  List<Product> products = [
    Product(
      name: 'LIME',
      type: 'Shirt',
      color: 'Blue',
      size: 'L',
      price: '32\$',
      rating: 5,
      ratingcount: 10,
      image: 'assets/images/fav1.png',
      discount: 0,
      dateAdded: DateTime(2024, 4, 6),
      quantity: 10,
    ),
    Product(
      name: 'Mango',
      type: 'Longsleeve Violeta',
      color: 'Orange',
      size: 'S',
      price: '46\$',
      rating: 0,
      ratingcount: 0,
      image: 'assets/images/fav2.png',
      discount: 0,
      dateAdded: DateTime(2024, 4, 9),
      quantity: 8,
    ),
    Product(
      name: 'Olivier',
      type: 'Shirt',
      color: 'Gray',
      size: 'L',
      price: '52\$',
      rating: 4,
      ratingcount: 3,
      image: 'assets/images/fav3.png',
      discount: 0,
      dateAdded: DateTime(2024, 4, 3),
      quantity: 0,
    ),
    Product(
      name: '&Berries',
      type: 'T-Shirt',
      color: 'Black',
      size: 'S',
      price: '60\$',
      rating: 5,
      ratingcount: 8,
      image: 'assets/images/fav4.png',
      discount: 30,
      dateAdded: DateTime(2024, 4, 1),
      quantity: 5,
    ),
    Product(
      name: '&Berries',
      type: 'T-Shirt',
      color: 'Black',
      size: 'S',
      price: '60\$',
      rating: 5,
      ratingcount: 8,
      image: 'assets/images/fav4.png',
      discount: 30,
      dateAdded: DateTime(2024, 4, 1),
      quantity: 10,
    ),
  ];

  List<String> chipLabels = [
    'Summer',
    'T-Shirt',
    'Shirt',
    'Sport Dress',
    'Pullover',
    'Jackets',
    'Longsleeve Violeta',
  ];

  List<bool> isSelectedList = List.filled(7, false);

  List<Product> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
  }

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
              padding: const EdgeInsets.only(left: 14, top: 18),
              child: Text(
                'Favorites',
                style: bold.copyWith(fontSize: 34),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: chipLabels.length,
                  itemBuilder: (context, index) {
                    return ChipItem(
                      label: chipLabels[index],
                      isSelected: isSelectedList[index],
                      onSelect: (isSelected) {
                        setState(() {
                          isSelectedList = List.generate(
                            chipLabels.length,
                            (i) => i == index ? isSelected : false,
                          );

                          if (isSelected) {
                            filteredProducts = products
                                .where((product) =>
                                    product.type == chipLabels[index])
                                .toList();
                          } else {
                            filteredProducts = products;
                          }
                        });
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_list),
                      ),
                      Text(
                        'Filters',
                        style: medium.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.swap_vert),
                      ),
                      Text(
                        'Price: lowest to high',
                        style: medium.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.view_list),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  final isNew =
                      DateTime.now().difference(product.dateAdded).inDays <= 7;

                  return product.quantity > 0
                      ? ProductItem(product: product, isNew: isNew)
                      : Opacity(
                          opacity: 0.5,
                          child: ProductItem(product: product, isNew: isNew),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
