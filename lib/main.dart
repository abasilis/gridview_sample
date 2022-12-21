import 'package:flutter/material.dart';
import 'package:gridview_sample/home_page.dart';
import 'package:gridview_sample/home_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage2(),
      //To see another ListView, change HomePage for HomePage2
    );
  }
}
