import 'package:flutter/material.dart';
import 'package:nstweb/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        hintColor: AppColors.accentColor,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: AppColors.darkGreyColor),
          headline6: TextStyle(color: AppColors.linkColor),
          // Add more text styles as needed
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(color: AppColors.darkGreyColor),
        ),
      ),
    );
  }
}
