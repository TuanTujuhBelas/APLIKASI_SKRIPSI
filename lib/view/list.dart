import 'package:flutter/material.dart';
import 'package:APLIKASI_SKRIPSI/view/music/kerissolo.dart';
import './music/golok.dart';
import './music/celurit.dart';
import './music/kujang.dart';
import './music/kerissolo.dart';
import './music/kerisjogja.dart';
import './music/kerisbali.dart';

// ignore: camel_case_types
class listScreen extends StatefulWidget {
  @override
  State<listScreen> createState() => _listScreenState();
}

class _listScreenState extends State<listScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Senjata Pencak Silat", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Color(0xFF86e5e7),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(25),
        crossAxisCount: 2,
        children: [
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/Golok 1.png"),
                          fit: BoxFit.contain)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => gambusScreen()));
                    },
                    child: Container(
                        child: Text("Golok",
                            style: TextStyle(fontFamily: "Poppins"))),
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/Celurit 1.jpg"),
                          fit: BoxFit.contain)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => gendangScreen()));
                    },
                    child: Container(
                        child: Text("Celurit",
                            style: TextStyle(fontFamily: "Poppins"))),
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/Kujang 1.png"),
                          fit: BoxFit.contain)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => genderScreen()));
                    },
                    child: Container(
                        child: Text("Kujang",
                            style: TextStyle(fontFamily: "Poppins"))),
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/Keris Solo 1.jpg"),
                          fit: BoxFit.contain)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => gongScreen()));
                    },
                    child: Container(
                        child: Text("Keris Solo",
                            style: TextStyle(fontFamily: "Poppins"))),
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/Keris Jogja 1.jpg"),
                          fit: BoxFit.contain)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => kecrekScreen()));
                    },
                    child: Container(
                        child: Text("Keris Jogja",
                            style: TextStyle(fontFamily: "Poppins"))),
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/Keris Bali 1.jpg"),
                          fit: BoxFit.contain)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => klarinetScreen()));
                    },
                    child: Container(
                        child: Text("Keris Bali",
                            style: TextStyle(fontFamily: "Poppins"))),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
