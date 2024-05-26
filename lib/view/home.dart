import 'package:flutter/material.dart';
import 'package:APLIKASI_SKRIPSI/view/about.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF86e5e7),
        title: const Text(
          "Senjata Tradisional Pencak Silat",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const aboutScreen()));
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo/Wallpaper1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
