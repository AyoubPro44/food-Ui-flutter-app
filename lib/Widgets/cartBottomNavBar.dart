// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  '\$62',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Ordre Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
