// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemWidget extends StatelessWidget {
  final int price;
  final String foodName;
  final String description;
  final String imagePath;

  const NewestItemWidget({
    required this.price,
    required this.foodName,
    required this.description,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Container(
        width: 380,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'itemPage');
              },
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: 150,
                ),
              ),
            ),
            Container(
              width: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    foodName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (index) {},
                  ),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 26,
                  ),
                  Icon(
                    CupertinoIcons.cart,
                    color: Colors.red,
                    size: 26,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
