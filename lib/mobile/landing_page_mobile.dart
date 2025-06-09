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
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.5,
            color: Colors.deepPurple,
          ),
        ),
        endDrawer: MobileDrawer(),
        body: ListView(
          children: [
            CircleAvatar(
              radius: 113.0,
              backgroundColor: Color.fromRGBO(236, 231, 245, 1),
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/yop-circle.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[50],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0))),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: SansBold("Hey I'm", 15.0),
                        ),
                        SansBold("Sebastián Alberto Alarcón Béjar", 25.0),
                        Sans("Web and mobile developer", 18.0)
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 3.0,
                          children: [
                            Icon(Icons.email),
                            Icon(Icons.call),
                            Icon(Icons.location_pin),
                          ],
                        ),
                        SizedBox(width: 40.0),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 9.0,
                          children: [
                            Sans("sebastianalarconbejar@gmail.com", 15.0),
                            Sans("+52 442 323 7924", 15.0),
                            Sans("Querétaro, México", 15.0)
                          ],
                        )
                      ],
                    )
                  ]),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 35.0),
                  Sans(
                      "I am a Software Engineer with a strong passion for web and mobile application development. Committed to building optimized, secure, and scalable solutions while adhering to best coding practices.",
                      15.0),
                  SizedBox(height: 10.0),
                  SansBold("Backend", 15.0),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer(text: "NodeJs"),
                      tealContainer(text: "Firebase"),
                      tealContainer(text: "React")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SansBold("Frontend", 15),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer(text: "Flutter"),
                      tealContainer(text: "Bootstrap"),
                      tealContainer(text: "CSS")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("What I do?", 35.0),
                AnimatedCard(
                  imagePath: "assets/webL.png",
                  text: "Web development",
                  width: 300.0,
                  height: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/software.png",
                  text: "Software engineering",
                  width: 300.0,
                  height: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/app.png",
                  text: "App development",
                  width: 300.0,
                  height: 300.0,
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            ContactFormMobile(),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
