import 'package:flutter/material.dart';

Widget productCard(var title, var imgPath, context) {
  return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          color: Colors.amberAccent[100],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(imgPath),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(children: [
              Text(title,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              SizedBox(
                height: 6,
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
                  Text("5.0")
                ],
              )
            ]),
          ),
        ],
      ));
}
