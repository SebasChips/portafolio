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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Portafolio", 30.0),
                        SizedBox(height: 15),
                        Sans("The same one you are seeing right now", 15),
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
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: widthDevice /3,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,

                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice /3,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
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
                        Sans("Multi-platform system designed to promote early interest in school and technology through educational games that teach basic programming concepts, helping children develop a passion for coding and encouraging them to stay in school.", 15),
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
                            SizedBox(width: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("¿Qué Plan?", 30.0),
                        SizedBox(height: 15),
                        Sans("Android app developed to help young people discover and share local entertainment options through a social platform,", 15),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/kotlin.png',
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/firebase.png',
                              height: 50,
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: widthDevice /3,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice /3,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
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
                        Sans("Web system to automate academic mobility tracking and approval processes.", 15),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("JFK extracurricular activities", 30.0),
                        SizedBox(height: 15),
                        Sans("The same one you are seeing right now", 15),
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
                              'assets/icons/mysql.png',
                              height: 50,
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: widthDevice /3,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                      ),
                      items: movilidad_academica.map((url) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
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

            ],
          ),
        ));
  }
}