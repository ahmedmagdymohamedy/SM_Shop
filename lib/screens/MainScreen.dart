import 'package:flutter/material.dart';
import 'package:test_ui/constants/constants.dart';
import 'package:test_ui/models/Product.dart';
import 'package:test_ui/screens/ProductCard.dart';

import 'MyTopBar.dart';
import 'ProductsList.dart';
import 'SearchBar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mpadding),
          child: Column(
            children: [
              SizedBox(height: mpadding * 2),
              SizedBox(height: mpadding),
              MyTopBar(),
              SizedBox(height: mpadding),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: mpadding * 0.3),
                    SearchBar(),
                    SizedBox(height: mpadding),
                    ProductsList(),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
