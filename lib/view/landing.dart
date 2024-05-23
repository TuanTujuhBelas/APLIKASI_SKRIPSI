import 'package:flutter/material.dart';
import 'home.dart';
import 'list.dart';
import 'TfliteModel.dart';
import 'about.dart' as about;
import 'PencakSilatScreen.dart' as silat;

class landingScreen extends StatefulWidget {
  const landingScreen({Key? key}) : super(key: key);

  @override
  State<landingScreen> createState() => _landingScreenState();
}

class _landingScreenState extends State<landingScreen> {
  int _indexScreen = 0;
  final List<Widget> _container = [
    const homeScreen(),
    listScreen(),
    const silat.PencakSilatScreen(), // Use the new PencakSilatScreen
  ];

  void _onTap(int index) {
    setState(() {
      _indexScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: const Color(0xFF86e5e7),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.white, size: 30),
        selectedLabelStyle: const TextStyle(
          fontFamily: "Poppins",
        ),
        currentIndex: _indexScreen,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined), label: 'List Senjata'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: 'Tentang'),
        ],
      ),
      body: _container[_indexScreen],
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40.0), // Adjust padding to lift the FAB above BottomNavigationBar
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 19, 180, 255), // Update color
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TfliteModel()),
            );
          },
          child: const Icon(
            Icons.crop_free,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
