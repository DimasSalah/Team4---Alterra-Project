import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// Halaman beranda
class HomePage extends StatelessWidget {
  // Jumlah gambar dan direktori gambar
  final int numberOfImages = 6;
  final String imageDirectory = "assets/images/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner utama dengan tombol Check
            Container(
              height: 536,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${imageDirectory}banner.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    bottom: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Teks "Fashion" dan "Sale"
                        Text(
                          "Fashion",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.0,
                          ),
                        ),
                        Text(
                          "Sale",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: ElevatedButton(
                      // Tombol Check
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFDB3022)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          "Check",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Bagian Baru
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "NEW",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    "View all",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "You’ve never seen it before!",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 11,
                  color: Color(0xFF9B9B9B),
                ),
              ),
            ),
            SizedBox(height: 16),
            // PageView pertama
            Container(
              height: 160,
              child: PageView.builder(
                controller: PageController(
                  viewportFraction: 0.8,
                ),
                physics: BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  String imagePath = "${imageDirectory}${index + 1}.png";
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.0),
                    child: Stack(
                      children: [
                        // Gambar
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Teks "NEW"
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "NEW",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Metropolis',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 6),
            // Bagian Diskon
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          "NEW",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "You’ve never seen it before!",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 11,
                        color: Color(0xFF9B9B9B),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // PageView kedua
                  Container(
                    height: 160,
                    child: PageView.builder(
                      controller: PageController(
                        viewportFraction: 0.8,
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: numberOfImages - 3,
                      itemBuilder: (context, index) {
                        String imagePath = "${imageDirectory}${index + 4}.png";
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.0),
                          child: Stack(
                            children: [
                              // Gambar
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Teks Diskon
                              Positioned(
                                top: 8,
                                left: 8,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    "-20%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Metropolis',
                                    ),
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
