import 'package:flutter/material.dart';

class PencakSilatScreen extends StatelessWidget {
  const PencakSilatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF86e5e7),
        title: Text(
          'Tentang Pencak Silat',
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"), // Path to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/IPSI.png", // Path to your Pencak Silat image
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  "Pencak Silat adalah seni bela diri tradisional yang berasal dari Asia Tenggara, khususnya Indonesia. "
                      "Seni bela diri ini tidak hanya mengajarkan teknik bertarung yang mematikan, tetapi juga menanamkan nilai-nilai luhur seperti disiplin, keberanian, dan hormat.",
                  style: TextStyle(
                    height: 1.5,
                    letterSpacing: 0.5,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
