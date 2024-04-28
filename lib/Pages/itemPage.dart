import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appBarWidget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
          ],
        ),
      ),
    );
  }
}
