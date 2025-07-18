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

    final List<String> portafolio = [
      'assets/portafolio/portafolio1.png',
      'assets/portafolio/portafolio2.png',
      'assets/portafolio/portafolio3.png',
    ];

    return Scaffold(
      drawer: WebDrawer(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(),
              title: TabsWebList(),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header Works
                SizedBox(height: 40),
                SansBold("Works", 40),
                SizedBox(height: 60),

                // Troyano viajero
                _buildProjectCard(
                  context,
                  widthDevice,
                  isImageLeft: true,
                  title: "Troyano viajero",
                  description: "Web system developed for my university to automate administrative processes related to academic mobility tracking and approval. Built using JavaScript, with Node.js handling the server-side logic.",
                  techIcons: [
                    'assets/icons/js.png',
                    'assets/icons/nodejs.png',
                    'assets/icons/mysql.png',
                  ],
                  images: movilidad_academica,
                ),

                SizedBox(height: 80),

                // JFK extracurricular activities
                _buildProjectCard(
                  context,
                  widthDevice,
                  isImageLeft: false,
                  title: "JFK extracurricular activities",
                  description: "Web system developed for JFK School as an enrollment platform for sports and extended learning activities. Built with PHP and Apache as the server stack, the system is designed for parents to simplify the enrollment process.",
                  techIcons: [
                    'assets/icons/php.png',
                    'assets/icons/apache.png',
                    'assets/icons/mysql.png',
                    'assets/icons/docker.png',
                  ],
                  images: JFK,
                ),

                SizedBox(height: 80),

                // JFK administrative part
                _buildProjectCard(
                  context,
                  widthDevice,
                  isImageLeft: true,
                  title: "JFK administrative part",
                  description: "It's the administrative part of the extracurricular activities where they manage the activities, capacities and type of groups available for the parents. Also they have the same capabilities as the other system but with superadmin privileges.",
                  techIcons: [
                    'assets/icons/php.png',
                    'assets/icons/apache.png',
                    'assets/icons/mysql.png',
                    'assets/icons/docker.png',
                  ],
                  images: JFK, // Usando las mismas imágenes o crear nuevas
                ),

                SizedBox(height: 80),

                // Projects Header
                SansBold("Projects", 40),
                SizedBox(height: 60),

                // Portafolio
                _buildProjectCard(
                  context,
                  widthDevice,
                  isImageLeft: false,
                  title: "Portafolio",
                  description: "A web resume showcasing my skills, projects and experiences of my professional path. Responsive for mobile and desktop devices, with the implementation of flutter. This because I wanted to deepen my understanding of multiplatform development.",
                  techIcons: [
                    'assets/icons/flutter.png',
                    'assets/icons/dart.png',
                    'assets/icons/firebase.png',
                  ],
                  images: portafolio,
                  showLinks: true,
                  linkTitle: "Repository",
                  links: [
                    {"url": "https://github.com/SebasChips/portafolio", "image": "assets/github.svg"},
                  ],
                ),

                SizedBox(height: 80),

                // BitByBit
                _buildProjectCard(
                  context,
                  widthDevice,
                  isImageLeft: true,
                  title: "BitByBit",
                  description: "A react native Multi-platform system (Android and web) designed to promote early interest in school and technology through educational games that teach basic programming concepts, helping children develop a passion for coding and encouraging them to stay in school.",
                  techIcons: [
                    'assets/icons/js.png',
                    'assets/icons/react.png',
                    'assets/icons/firebase.png',
                  ],
                  images: bit_by_bit,
                  showLinks: true,
                  linkTitle: "Repository, Web & APK",
                  links: [
                    {"url": "https://bit-by-bit-a7551.firebaseapp.com", "image": "assets/web.svg"},
                    {"url": "https://github.com/SebasChips/BitbyBit.git", "image": "assets/github.svg"},
                    {"url": "https://github.com/SebasChips/BitbyBit.git", "image": "assets/apk.svg"},
                  ],
                ),

                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProjectCard(
      BuildContext context,
      double widthDevice, {
        required bool isImageLeft,
        required String title,
        required String description,
        required List<String> techIcons,
        required List<String> images,
        bool showLinks = false,
        String linkTitle = "",
        List<Map<String, String>> links = const [],
      }) {
    Widget imageSection = Container(
      width: widthDevice * 0.4,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 280,
            enlargeCenterPage: false,
            viewportFraction: 1.0,
            aspectRatio: 16 / 9,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: images.map((url) {
            return Container(
              width: double.infinity,
              child: Image.asset(
                url,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 280,
              ),
            );
          }).toList(),
        ),
      ),
    );

    Widget contentSection = Container(
      width: widthDevice * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SansBold(title, 32.0),
          SizedBox(height: 20),
          Sans(description, 16),
          SizedBox(height: 30),

          // Tech Icons
          Wrap(
            spacing: 15,
            runSpacing: 10,
            children: techIcons.map((icon) {
              return Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Image.asset(
                  icon,
                  height: 40,
                  width: 40,
                ),
              );
            }).toList(),
          ),

          // Links section
          if (showLinks) ...[
            SizedBox(height: 25),
            SansBold(linkTitle, 16),
            SizedBox(height: 10),
            Wrap(
              spacing: 15,
              children: links.map((link) {
                return UrlLinks(
                  url: link["url"]!,
                  image: link["image"]!,
                );
              }).toList(),
            ),
          ],
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: isImageLeft
            ? [imageSection, SizedBox(width: 40), contentSection]
            : [contentSection, SizedBox(width: 40), imageSection],
      ),
    );
  }
}