import 'package:ecom_app_ui/product/product_list.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: ProductList().list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            shadowColor: Colors.deepPurpleAccent,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  ProductList().list[index].images,
                  height: 80,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${ProductList().list[index].nameofproduct}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                    Text(
                      '5.0(23 Reviews)',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
