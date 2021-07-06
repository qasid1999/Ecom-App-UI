import 'package:ecom_app_ui/more_categories/more_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfMoreCategories {
  List<MoreCategories> listofmorecategories = [
    MoreCategories(
        categoryName: "Cloths",
        numberofitem: 5,
        icon: Icon(
          Icons.accessibility_sharp,
          color: Colors.purple,
        )),
    MoreCategories(
        categoryName: "Electronic",
        numberofitem: 20,
        icon: Icon(
          Icons.electrical_services_rounded,
          color: Colors.purple,
        )),
    MoreCategories(
        categoryName: "HouseHolds",
        numberofitem: 9,
        icon: Icon(
          Icons.house,
          color: Colors.purple,
        )),
    MoreCategories(
        categoryName: "Appliances",
        numberofitem: 5,
        icon: Icon(
          Icons.all_inclusive_rounded,
          color: Colors.purple,
        )),
    MoreCategories(
        categoryName: "Peshawri Chapal",
        numberofitem: 40,
        icon: Icon(
          Icons.shopping_basket_sharp,
          color: Colors.purple,
        )),
    MoreCategories(
      categoryName: "Bikes",
      numberofitem: 10,
      icon: Icon(
        Icons.directions_bike,
        color: Colors.purple,
      ),
    ),
    MoreCategories(
      categoryName: "Watches",
      numberofitem: 7,
      icon: Icon(
        Icons.watch,
        color: Colors.purple,
      ),
    ),
  ];
}
