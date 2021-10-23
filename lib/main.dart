import 'package:flutter/material.dart';
import 'package:test_ui/constants/constants.dart';
import 'package:test_ui/screens/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: mScaffoldBackGroundColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: mContaintLightColor,
            ),
        iconTheme: IconThemeData(
          color: mContaintLightColor.withOpacity(0.8),
        ),
      ),
      home: MyHomePage(),
    );
  }
}
