import 'package:ecom_app_ui/product/item_and_viewMore.dart';
import 'package:ecom_app_ui/product/popular_products.dart';
import 'package:ecom_app_ui/product/slider_of_images_of_product.dart';
import 'package:flutter/material.dart';

import 'more_categories/more_categories_class.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selected = 0;
  Widget buildIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = index;
        });
      },
      child: Icon(
        icon,
        color: index == _selected ? Colors.purple : Colors.white,
        size: 35,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthsize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.grey[400],
        child: Container(
          width: widthsize.width,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIcon(Icons.home, 0),
                buildIcon(Icons.favorite, 1),
                buildIcon(Icons.add_shopping_cart_rounded, 2),
                buildIcon(Icons.person, 3),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
        elevation: 20,
        backgroundColor: Colors.white,
        title: Text(
          'Ecom App UI',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              //Row For Items and ViewMore
              Row_Of_Items_and_ViewMore(
                items: "Items",
                buttonName: "View More",
              ),
              //Slider
              SliderOfProductImages(),
              //More Categories
              SizedBox(
                height: 20,
              ),
              Text(
                "More Categories",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MoreCATEGORIESList(),
              SizedBox(
                height: 20,
              ),
              Row_Of_Items_and_ViewMore(
                items: "Popular Items",
                buttonName: "View More",
              ),
              PopularProducts()
            ],
          ),
        ),
      ),
    );
  }
}
