// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/home_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePagee(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
