import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: non_constant_identifier_names
Widget productSlider(
    List<dynamic> productImages, List<dynamic> productTitles, context) {
  return CarouselSlider(
    options: CarouselOptions(height: 300),
    items: productImages.map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color: Colors.amberAccent[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage('$i'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Text(productTitles[productImages.indexOf(i)],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.amber,
                          ),
                          Text("5.0 (23 Reviews)")
                        ],
                      )
                    ]),
                  ),
                ],
              ));
        },
      );
    }).toList(),
  );
}
