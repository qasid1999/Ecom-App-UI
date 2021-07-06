import 'package:flutter/material.dart';

import 'list_of_more_categories.dart';

class MoreCATEGORIESList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ListOfMoreCategories().listofmorecategories.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              margin: EdgeInsets.only(right: 10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ListOfMoreCategories().listofmorecategories[index].icon,
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${ListOfMoreCategories().listofmorecategories[index].categoryName}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "${ListOfMoreCategories().listofmorecategories[index].numberofitem} Items"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
