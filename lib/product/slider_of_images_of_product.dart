import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_app_ui/product/product_list.dart';
import 'package:flutter/material.dart';

class SliderOfProductImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: ProductList().list.map((card) {
        return Card(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                card.images,
                //ProductList().getImage(index),
                fit: BoxFit.fill,
                width: double.infinity,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  card.nameofproduct,
                  //ProductList().getName(index),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  Text('5.0(23 Reviews)'),
                ],
              )
            ],
          ),
        );
      }).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 300,
        autoPlay: true,
      ),
    );
  }
}
