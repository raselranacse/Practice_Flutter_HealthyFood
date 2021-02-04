import 'package:flutter/material.dart';
class DetailsPage extends StatefulWidget {
  final String foodName;
  final String imgPath;
  final String price;
  const DetailsPage({ this.foodName, this.imgPath, this.price});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("I am here")),
    );
  }
}
