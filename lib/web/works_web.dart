import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    final List<String> movilidad_academica = [
      'assets/movilidad_academica/ma2.png',
      'assets/movilidad_academica/movilidad_academica.png',
      'assets/movilidad_academica/ma3.png',
    ];

    final List<String> bit_by_bit = [
      'assets/BitByBit/bitbybit3.png',
      'assets/BitByBit/bitbybit4.png',
      'assets/BitByBit/bitbybit5.png',
      'assets/BitByBit/bitbybit6.png',
      'assets/BitByBit/bitbybit7.png',
      'assets/BitByBit/bitbybit2.png'
    ];

    final List<String> JFK = [
      'assets/JFK/JFK1.png',
      'assets/JFK/JFK2.png',
      'assets/JFK/JFK3.png',
      'assets/JFK/JFK4.png'
    ];

    return Scaffold(
        drawer: WebDrawer(),
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool ineerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 25, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(),
                title: TabsWebList(),
              )
            ];
          },
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(height: 40),
                  SansBold("Works", 40),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice / 2.5,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        enlargeCenterPage: false,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            url,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Troyano viajero", 30.0),
                        SizedBox(height: 15),
                        Sans(
                            "Web system developed for my university to automate administrative processes related to academic mobility tracking and approval. Built using JavaScript, with Node.js handling the server-side logic.",
                            15),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/js.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/nodejs.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/mysql.png',
                              height: 50,
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("JFK extracurricular activities", 30.0),
                        SizedBox(height: 15),
                        Sans("Web system developed for JFK School as an enrollment platform for sports and extended learning activities. Built with PHP and Apache as the server stack, the system is designed for parents to simplify the enrollment process.", 15),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/php.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/apache.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/mysql.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/docker.png',
                              height: 50,
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: widthDevice / 2.5,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: JFK.map((url) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              url,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /*SizedBox(
                    width: widthDevice / 3,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            url,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        );
                      }).toList(),
                    ),
                  ),*/
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("JFK administrative part", 30.0),
                        SizedBox(height: 15),
                        Sans(
                            "It's the administrative part of the extracurricular activities in where they manage the activities, capacities and type of groups available fo the parents. Also they have the same capabilities as the other system but wit a superadmin privalage.",
                            15),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/php.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/apache.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/mysql.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/docker.png',
                              height: 50,
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  SizedBox(height: 40),
                  SansBold("Projects", 40),
                ],),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Portafolio", 30.0),
                        SizedBox(height: 15),
                        Sans(
                            "A web resume showcasing my skills, projects and experiences of my professional path. Responsive for mobil and desktop devices, with the implementation of flutter. This because wanted to deepen my understanding of multiplatform development.",
                            15),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/flutter.png',
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/dart.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/firebase.png',
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(width: 10),
                            SizedBox(height: 5),
                          ],
                        ),
                        SansBold("Repository", 16),
                        SizedBox(height: 2),
                        UrlLinks(
                            url: "https://github.com/SebasChips/portafolio",
                            image: "assets/github.svg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: widthDevice / 2.5,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            url,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice / 2.5,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 21 / 12,
                        initialPage: 0,
                      ),
                      items: bit_by_bit.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            url,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("BitByBit", 30.0),
                        SizedBox(height: 15),
                        Sans(
                            "A react native Multi-platform system (Android and web) designed to promote early interest in school and technology through educational games that teach basic programming concepts, helping children develop a passion for coding and encouraging them to stay in school.",
                            15),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/js.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/react.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/firebase.png',
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        SansBold("Repository & APK", 16),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2),
                              UrlLinks(
                                  url:
                                      "https://github.com/SebasChips/BitbyBit.git",
                                  image: "assets/github.svg"),
                              UrlLinks(
                                  url:
                                      "https://github.com/SebasChips/BitbyBit.git",
                                  image: "assets/apk.svg"),
                              SizedBox(height: 10),
                            ])
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),


            ],
          ),
        ));
  }
}
