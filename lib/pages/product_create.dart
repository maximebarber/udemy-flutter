import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: "Title"),
          onChanged: (String value) {
            setState(() {
              titleValue = value;
            });
          },
        ),
        TextField(
          decoration: InputDecoration(labelText: "Description"),
          maxLines: 3,
        ),
        TextField(
          decoration: InputDecoration(labelText: "Price"),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
