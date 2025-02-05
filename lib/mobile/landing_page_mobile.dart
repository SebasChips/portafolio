import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio_project/components.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(size: 35.5, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Image.asset('assets/yop-circle.png'),
                )),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(height: 20),
            TabsMobile(text: "Works", route: '/works'),
            SizedBox(height: 20),
            TabsMobile(text: "Blog", route: '/blog'),
            SizedBox(height: 20),
            TabsMobile(text: "Contact", route: '/contact'),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse("https://www.instagram.com")),
                    icon: SvgPicture.asset(
                      "assets/instagram.svg",
                      color: Colors.black,
                      width: 35,
                    )),
                IconButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse("https://www.github.com")),
                    icon: SvgPicture.asset(
                      "assets/github.svg",
                      color: Colors.black,
                      width: 35,
                    )),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          //First section
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 117,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/yop-circle.png"),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: SansBold("Hello, I'm", 15),
                      ),
                      SansBold("Sebastián Alberto Alarcón Béjar", 25),
                      SansBold("Flutter developer", 20)
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      SizedBox(width: 40),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9,
                        children: [
                          Sans("sebastianalarconbejar@gmail.com", 15),
                          Sans("+52 442 323 7924", 15),
                          Sans("Querétaro, México", 15)
                        ],
                      )
                    ],
                  )
                ]),
          ),
          SizedBox(height: 90),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("About me", 35),
                Sans("Hello my name is Sebastián...", 15),
                SizedBox(height: 10),
                Wrap(
                  spacing: 7,
                  runSpacing: 7,
                  children: [
                    tealContainer(text: "Flutter"),
                    tealContainer(text: "Firebase"),
                    tealContainer(text: "Android")
                  ],
                )
              ],
            ),
          ),
          //Second section
          SizedBox(
            height: 60,
          ),
          //Third section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What I do?", 35),
              AnimatedCard(
                imagePath: "assets/webL.png",
                text: "Web development",
                width: 300,
                height: 300,
              ),
              SizedBox(height: 35),
              AnimatedCard(
                imagePath: "assets/firebase.png",
                text: "Firebase",
                width: 300,
                height: 300,
              ),
              SizedBox(height: 35),
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App development",
                width: 300,
                height: 300,
              ),
            ],
          ),
          //Fourth section
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.center,
            children: [SansBold("Contact me", 35)],
          )
        ],
      ),
    );
  }
}
