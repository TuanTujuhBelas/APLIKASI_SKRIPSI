import 'package:flutter/material.dart';
import './view/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pengenalan Senjata Tradisional',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const landingScreen(),
    );
  }
}
