import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class gongScreen extends StatelessWidget {
  final List<String> imgList = [
    "assets/logo/Keris Solo 1.jpg",
    "assets/logo/Keris Solo 2.jpg",
    "assets/logo/Keris Solo 3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF86e5e7),
        title: Text('Senjata Tradisional Keris Solo', style: TextStyle(fontFamily: "Poppins")),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 25,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(item,
                                        fit: BoxFit.cover, width: 1000.0),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 20.0),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 90,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Keris Solo",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 15,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          "Keris Solo, pusaka warisan budaya yang diperkirakan muncul di abad ke-16, merupakan hasil karya empu-mpu di Surakarta. Keris Solo memiliki ciri khas berbeda dengan keris Yogyakarta, seperti bentuk bilah yang lebih tebal dan pamor yang lebih beragam. Keris Solo tak hanya pusaka, tapi juga simbol status sosial dan spiritual dalam adat Jawa, seperti pernikahan, penobatan raja, dan ritual adat lainnya.",
                          style: TextStyle(
                            height: 1.7,
                            letterSpacing: 0.5,
                            color: Colors.black87,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
