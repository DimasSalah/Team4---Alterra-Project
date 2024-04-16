import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:team4_alterra/pages/favorites/models/product.dart';
import 'package:team4_alterra/theme/colors.dart';
import 'package:team4_alterra/theme/text_styles.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool isNew;

  const ProductItem({
    super.key,
    required this.product,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 16.0,
        right: 16.0,
        bottom: 2.0,
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 22),
            height: 104,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 104,
                  height: 104,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset(
                        product.image,
                        fit: BoxFit.fill,
                      ),
                      if (isNew)
                        Container(
                          width: 40,
                          height: 24,
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'NEW',
                            style: semiBold.copyWith(
                              fontSize: 11,
                              color: white,
                            ),
                          ),
                        ),
                      if (product.discount > 0)
                        Container(
                          width: 40,
                          height: 24,
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '-${product.discount}%',
                            style: semiBold.copyWith(
                              fontSize: 11,
                              color: white,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 13,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: regular.copyWith(fontSize: 12, color: grey),
                      ),
                      Text(
                        product.type,
                        style: semiBold.copyWith(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Color: ',
                                    style: regular.copyWith(
                                      fontSize: 12,
                                      color: grey,
                                    ),
                                  ),
                                  Text(
                                    product.color,
                                    style: regular.copyWith(fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                product.price,
                                style: medium.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Size: ',
                                    style: regular.copyWith(
                                      fontSize: 12,
                                      color: grey,
                                    ),
                                  ),
                                  Text(
                                    product.size,
                                    style: regular.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RatingBar.builder(
                                    initialRating: product.rating.toDouble(),
                                    minRating: 1,
                                    maxRating: 5,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemSize: 14,
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(255, 186, 73, 1),
                                    ),
                                    onRatingUpdate: (index) {},
                                  ),
                                  Text(
                                    '(${product.ratingcount})',
                                    style: regular.copyWith(
                                      fontSize: 11,
                                      color: grey,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      color: grey,
                      iconSize: 20,
                      onPressed: () {},
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (product.quantity > 0)
            Positioned(
              bottom: 7,
              right: 0,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  color: white,
                  iconSize: 18,
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_bag),
                ),
              ),
            ),
          if (product.quantity == 0)
            Positioned(
              bottom: 0,
              left: 0,
              child: Text(
                'Sorry, this item is currently sold out',
                style: regular.copyWith(fontSize: 11),
              ),
            ),
        ],
      ),
    );
  }
}
