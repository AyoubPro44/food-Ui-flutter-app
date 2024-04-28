// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 5,
        ),
        child: Row(
          children: [
            categorieCard('images/drink.png'),
            categorieCard('images/biryani.png'),
            categorieCard('images/burger.png'),
            categorieCard('images/pizza.png'),
            categorieCard('images/salan.png'),
          ],
        ),
      ),
    );
  }

  // category card methode

  Padding categorieCard(String imagePath) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(8),
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
            ]),
        child: Image.asset(
          imagePath,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
