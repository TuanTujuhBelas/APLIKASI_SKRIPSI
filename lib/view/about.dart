import 'package:flutter/material.dart';

class aboutScreen extends StatelessWidget {
  const aboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF86e5e7),
        title: Text(
          'Tentang Aplikasi',
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              "Muhammad Respati Abimanyu 2020230019",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Version 1.0",
              style: TextStyle(
                fontFamily: "Poppins",
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Copyright © 2024",
              style: TextStyle(
                fontFamily: "Poppins",
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
