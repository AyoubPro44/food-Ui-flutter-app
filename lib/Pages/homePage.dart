// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appBarWidget.dart';
import 'package:food_app/Widgets/categoriesWidget.dart';
import 'package:food_app/Widgets/newestItemWidget.dart';
import 'package:food_app/Widgets/popularItemsWidget.dart';
import 'package:food_app/models/app_data.dart';

import '../Widgets/drawerWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          //app bar
          AppBarWidget(),

          // Search

          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
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
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'What would you like to have?',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          CategoriesWidget(),

          // popular items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Popular Items',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: appData.length,
              itemBuilder: (context, index) => PopularItemsWidget(
                price: appData[index].price,
                foodName: appData[index].foodName,
                description: appData[index].description,
                imagePath: appData[index].imagePath,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Newest',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          // NewestItemWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: appData.length,
              itemBuilder: (context, index) => NewestItemWidget(
                price: appData[index].price,
                foodName: appData[index].foodName,
                description: appData[index].description,
                imagePath: appData[index].imagePath,
              ),
            ),
          ),
        ],
      ),

      // Drawer

      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'CartPage');
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
