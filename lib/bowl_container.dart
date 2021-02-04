import 'package:flutter/material.dart';
import 'package:healthy_food/details_page.dart';
class BowlContainer extends StatelessWidget {
  const BowlContainer({
    Key key,
    @required this.imgPath,
    @required this.foodName,
    @required this.price,
  }) : super(key: key);

  final String imgPath;
  final String foodName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailsPage()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.fill,
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(foodName,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold)),
                Text(price,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        color: Colors.black))
              ],
            ),
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}