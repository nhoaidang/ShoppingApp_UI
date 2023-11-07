import 'package:flutter/material.dart';
import 'package:shoping_app/screen/product_screen.dart';

class ProductCard extends StatelessWidget {
  String img;
  ProductCard(this.img);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Color.fromARGB(255, 224, 224, 224),
            child: Stack(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductScreen(img)));
                },
                child: Image.asset(
                  "images/${img}.png",
                  fit: BoxFit.cover,
                  height: 230,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8FA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 20,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  img,
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7)),
                ),
                SizedBox(height: 5),
                Text(
                  "đ500.000",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.red.withOpacity(0.7)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
