import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<dynamic> categories = [
  "Clothes",
  "Electronics",
  "Households",
  "Appliances",
  "Others"
];

Widget categoriesSlider() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "More Categories",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      CarouselSlider(
        options: CarouselOptions(height: 100.0),
        items: categories.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.amber,
                        width: 1,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Text(i,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18))
                        ]),
                      ),
                    ],
                  ));
            },
          );
        }).toList(),
      ),
    ],
  );
}
