import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food/bowl_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[500],
        body: ListView(children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Row(children: <Widget>[
                  Text('Healthy',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0)),
                  SizedBox(width: 10.0),
                  Text('Food',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25.0))
                ])),
            SizedBox(height: 40),
            Column(children: [
              Container(
                  height: MediaQuery.of(context).size.height * .62,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(75))),
                  child: Padding(
                      padding: const EdgeInsets.only(top: 30, right: 10, left: 45),
                      child: ListView(children: [
                        BowlContainer(
                            imgPath: "images/salmon_bowl.jpg",
                            foodName: "Salmon Bowl",
                            price: "\$240"),
                        BowlContainer(
                            imgPath: "images/salmon_bowl.jpg",
                            foodName: "Berry Bowl",
                            price: "\$240"),
                        BowlContainer(
                            imgPath: "images/salmon_bowl.jpg",
                            foodName: "Avcodo Bowl",
                            price: "\$240"),
                        BowlContainer(
                            imgPath: "images/salmon_bowl.jpg",
                            foodName: "Spring Bowl",
                            price: "\$240"),
                      ])))
            ]),
            Container(
              height: MediaQuery.of(context).size.height * .15,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 55.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 55.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_basket, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 55.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF1C1428)),
                      child: Center(
                          child: Text('Checkout',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 15.0))),
                    )
                  ],
                ),
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
