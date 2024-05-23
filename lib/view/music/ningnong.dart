import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ningnongScreen extends StatelessWidget {
  final List<String> imgList = [
    "assets/logo/ningnong.jpg",
    "assets/logo/ningnong2.jpg",
    "assets/logo/ningnong3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF86e5e7),
        title: Text('Alat Musik Ningnong',
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
                              "ningnong",
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
                          "Alat musik Ningnong merupakan alat musik kuno yang telah ada sejak dahulu. Cara memainkan alat musik Ningnong adalah dengan cara dipukul menggunakan tongkat yang terbuat dari besi. Bentuk Ningnong sekilas mirip Gong, namun sebenarnya keduanya adalah dua alat musik yang berbeda. Meskipun keduanya juga terbuat dari bahan material logam kuningan. Ningnong dibedakan menjadi dua dengan dua macam ukuran, yakni besar dan kecil. Perbedaan ukuran inilah yang menyebabkan dua macam bunyi, yakni ning dan nong. Sehingga, penamaan Ningnong mengacu pada bunyi yang dikeluarkan alat musik tersebut.",
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
