import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.5, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2.0, color: Colors.black)),
                  child: Image.asset('assets/yop-circle.png'),
                )),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(height: 20.0),
            TabsMobile(text: "About", route: '/about'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Works", route: '/works'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Contact", route: '/contact'),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse("https://www.instagram.com")),
                    icon: SvgPicture.asset(
                      "assets/instagram.svg",
                      color: Colors.black,
                      width: 35.0,
                    )),
                IconButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse("https://www.github.com")),
                    icon: SvgPicture.asset(
                      "assets/github.svg",
                      color: Colors.black,
                      width: 35.0,
                    )),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              SansBold("Works", 35.0),
              SizedBox(
                height: 20.0,
              ),
              AnimatedCard(
                imagePath: "assets/app.png",
                fit: BoxFit.contain,
                height: 150.0,
                width: 300.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              SansBold("Portafolio", 20.0),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Sans("Super project", 15.0),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
