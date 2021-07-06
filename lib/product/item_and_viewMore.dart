import 'package:flutter/material.dart';

// ignore: camel_case_types
class Row_Of_Items_and_ViewMore extends StatelessWidget {
  Row_Of_Items_and_ViewMore({this.items, this.buttonName});
  final String items;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '$items',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            '$buttonName',
            style: TextStyle(color: Colors.purple),
          ),
        ),
      ],
    );
  }
}
