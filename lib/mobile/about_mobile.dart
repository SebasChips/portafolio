import 'package:flutter/material.dart';
import 'package:portafolio_project/components.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.5, color: Colors.deepPurple),
      ),
      endDrawer: MobileDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Color.fromRGBO(236, 231, 245, 1),
              child: CircleAvatar(
                radius: 114.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/yop-circle.png',
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 35.0),
                  SizedBox(height: 10.0),
                  SansBold("Hello! I'm Sebastián", 15.0),
                  SizedBox(
                    height: 5,
                  ),
                  Sans(
                      "I'm a web & mobile developer searching for new projects and challenges to achieve, implementing methologies as:",
                      15),
                  Sans("Design thinking, DevOps and IaC.", 15),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 15.0),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer(text: "Flutter"),
                      tealContainer(text: "React"),
                      tealContainer(text: "Firebase"),
                      tealContainer(text: "MySql"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(
                  imagePath: "assets/webL.png",
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold("Web developmemt", 20.0),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            Sans(
                "Creation of responsive, scalable, and secure web solutions, designed to deliver optimal performance and meet the unique needs of each project.",
                15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                AnimatedCard(
                  imagePath: "assets/software.png",
                  width: 200.0,
                  reverse: true,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold("Software engineering", 20.0),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            Sans(
                "End-to-end software engineering solutions, focusing on building efficient, maintainable, and scalable applications tailored to meet diverse user needs and business goals.",
                15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                AnimatedCard(
                  imagePath: "assets/app.png",
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold("App development", 20.0),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            Sans(
                "Multiplatform and native Android app development, designed to be flexible and adaptable to any specific need or requirement.",
                15.0)
          ],
        ),
      ),
    ));
  }
}
