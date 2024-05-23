import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class tromboneScreen extends StatelessWidget {
  final List<String> imgList = [
    "assets/logo/trombone.jpg",
    "assets/logo/trombone2.jpg",
    "assets/logo/trombone3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF86e5e7),
        title: Text('Alat Musik Trombone',
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
                              "Trombone",
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
                          "Alat musik tradisional DKI Jakarta jenis ini masih tergolong ke dalam keluarga Terompet. Keunikan dari alat musik Trombon adalah ukurannya yang lebih besar dibandingkan ukuran Terompet pada umumnya. Alat musik Trombon dapat menghasilkan suara dari getaran bibir. Cara memainkannya yakni dengan ditiup, sambil menekan tuts sebagai pengatur nada pada Trombon. Cara menekan Tuts juga tidak boleh sembarangan, yakni membutuhkan teknik khusus dalam menggeser ke depan maupun ke belakang.",
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
