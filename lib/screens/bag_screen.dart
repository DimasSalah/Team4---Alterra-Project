import 'package:flutter/material.dart';
import 'package:team4_alterra/theme/colors.dart';
import 'package:team4_alterra/theme/text_styles.dart';
import 'package:team4_alterra/widgets/product_view.dart';

class MyBagPage extends StatefulWidget {
  const MyBagPage({super.key});

  @override
  State<MyBagPage> createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          title: Text(
            'My Bag',
            style: bold,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                // Handle search action
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: ListView(
                  children: const [
                    WidgetProduct(
                      titles: 'Pullover',
                      image:
                          'https://images.tokopedia.net/img/cache/700/VqbcmM/2023/11/18/0912b9c4-c345-44fd-b352-63bf5cabfc82.jpg',
                      color: 'black',
                      size: 'L',
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    WidgetProduct(
                        titles: 'Tshirt',
                        image:
                            'https://triplejeans.id/cdn/shop/files/YTS100WHT_1.jpg?v=1688373579',
                        color: 'white',
                        size: 'XL'),
                    SizedBox(
                      height: 25.0,
                    ),
                    WidgetProduct(
                        titles: 'Sports Shirt',
                        image:
                            'https://www.printsimple.eu/images/u/product-info/s/sports-t-shirt-quick-dry-custom-printed.28795.5.1649774270.100.jpg',
                        color: 'Black',
                        size: 'XL'),
                    SizedBox(
                      height: 25.0,
                    ),
                    WidgetProduct(
                        image:
                            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//92/MTA-33307921/erigo_erigo_longsleeve_by_the_sea_black_full01_erwfayc8.jpg',
                        titles: 'Longsleeve',
                        color: 'Black',
                        size: 'L'),
                    SizedBox(
                      height: 25.0,
                    ),
                    WidgetProduct(
                        image:
                            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//91/MTA-63506024/kurota_shop_kurota_shop_pakaian_wanita_jumpsuit_jeans_wanita_series_l3264_full01_lp5kkgp9.jpg',
                        titles: 'Jumpsuit Wanita',
                        color: 'Blue',
                        size: 'L'),
                    SizedBox(
                      height: 25.0,
                    ),
                    WidgetProduct(
                        image:
                            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/103/MTA-46488514/sun-baby_piyama-pijamas-baju-tidur-sleepwear-stelan-panjang-anak-bayi-kancing-pundak-3-bulan-4-tahun_full04.jpg',
                        titles: 'Pijamas Wanita',
                        color: 'Pink',
                        size: 'L'),
                    SizedBox(
                      height: 25.0,
                    ),
                    WidgetProduct(
                        image:
                            'https://static.e-stradivarius.net/5/photos4/2024/V/0/1/p/7343/202/702/7343202702_2_4_1.jpg?t=1689848347404&impolicy=stradivarius-itxmediumhigh&imwidth=480&imformat=chrome&imdensity=2.625',
                        titles: 'Jeans',
                        color: 'Blue',
                        size: 'XL'),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, top: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.arrow_forward_sharp),
                      hintText: 'Enter your promo code',
                      hintStyle: regular.copyWith(color: Colors.grey[400]),
                      prefixIcon: Icon(
                        Icons.local_offer,
                        color: Colors.grey[400],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Text(
                      'Total Amount:',
                      style: regular,
                    ),
                    const Spacer(),
                    Text('124\$', style: bold),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 72,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: () {},
                  child:
                      Text("Checkout", style: semiBold.copyWith(color: white)),
                ),
              ),
            ),
          ],
        ));
  }
}
