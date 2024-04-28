// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  final String foodName;
  final String imagePath;
  final String description;
  final int price;

  const PopularItemsWidget({
    required this.description,
    required this.foodName,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        width: 170,
        height: 225,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      imagePath,
                      height: 130,
                    ),
                  ),
                ),
              ),
              Text(
                foodName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$$price',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
