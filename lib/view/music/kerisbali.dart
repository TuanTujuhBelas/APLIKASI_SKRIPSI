import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class klarinetScreen extends StatelessWidget {
  final List<String> imgList = const[
    "assets/logo/Keris Bali 1.jpg",
    "assets/logo/Keris Bali 2.jpg",
    "assets/logo/Keris Bali 3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF86e5e7),
        title: Text('Senjata Tradisional Keris Bali',
            style: TextStyle(fontFamily: "Poppins")),
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
                              "Keris Bali",
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
                          "Keris Bali, dikenal sebagai Keris Tayuhan, diperkirakan muncul di abad ke-14 dan dibuat oleh empu-mpu lokal di Bali. Keris Bali memiliki ciri khas berbeda dengan Keris Solo dan Yogyakarta, seperti bentuk bilah yang lebih tebal dan lurus, lekukan yang lebih sedikit, dan pamor yang lebih sederhana. Keris Bali tak hanya pusaka, tapi juga simbol spiritual, status sosial, dan filosofi dalam adat Bali, seperti upacara adat, ritual keagamaan, dan penanda strata sosial.",
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
