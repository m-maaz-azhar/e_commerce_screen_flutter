import 'package:e_commerce_screen_flutter/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_screen_flutter/CategoriesSlider.dart';
import 'package:e_commerce_screen_flutter/ProductSlider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> productImages = [
    "assets/note20.jpg",
    "assets/macBookAir.jpg",
    "assets/macbookpro.jpg",
    "assets/gpu.jpg",
    "assets/mouse.jpg",
    "assets/mousePad.jpg",
    "assets/keyboard.jpg",
    "assets/iphone.jpg"
  ];
  List<dynamic> productTitles = [
    "NOTE 20",
    "MAC BOOK AIR",
    "MAC BOOK PRO",
    "NVIDEA GPU",
    "MOUSE",
    "MOUSE PAD",
    "KEYBOARD",
    "IPHONE X"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Ecom App UI",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: [Icon(Icons.notifications)],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Item",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    Text(
                      "View More",
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    )
                  ],
                ),
              ),
              productSlider(productImages, productTitles, context),
              categoriesSlider(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Items",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    Text(
                      "View More",
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  productCard("NOTE 20", "assets/note20.jpg", context),
                  productCard("MAC BOOK AIR", "assets/macBookAir.jpg", context)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  productCard("MAC BOOK PRO", "assets/macbookpro.jpg", context),
                  productCard("NVIDEA GPU", "assets/gpu.jpg", context)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  productCard("MOUSE", "assets/mouse.jpg", context),
                  productCard("MOUSE PAD", "assets/mousePad.jpg", context)
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.amber),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.grey),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.grey),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.grey),
              label: '',
              backgroundColor: Colors.white,
            ),
          ],
          selectedItemColor: Colors.amber[800],
        ));
  }
}
