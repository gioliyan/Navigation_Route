import 'package:flutter/material.dart';
import 'package:tugas6_belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Shopping List Detail"),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 10),
          child: Text(tempItem.name +
              " " +
              tempItem.price.toString() +
              " " +
              tempItem.qty.toString() +
              " KG"),
        ),
      ),
    );
  }
}
