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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            //First section
            CircleAvatar(
              radius: 117,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 113,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/yop-circle.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 35),
                  SizedBox(height: 10),
                  Sans("Hello my name is Sebastián...", 15),
                  SizedBox(height: 15),
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
            SizedBox(height: 40),
//Second section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(
                  imagePath: "/assets/webL.png",
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                SansBold("Web developmemt", 20),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Sans(
                "I'm here to build your presence online with state of art apps",
                20),
            //Third section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                AnimatedCard(
                  imagePath: "assets/app.png",
                  width: 200,
                  reverse: true,
                ),
                SizedBox(
                  height: 30,
                ),
                SansBold("App development", 20),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Sans(
                "Do you need a  high performance, responsive and beautiful app? Don't worry I've got you cover",
                15),
            //Fourth section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                AnimatedCard(
                  imagePath: "assets/firebase.png",
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                SansBold("Backend development", 20),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Sans("Do you want your back-end to be highly secure?", 15)
          ],
        ),
      ),
    ));
  }
}
