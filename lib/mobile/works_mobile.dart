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
        iconTheme: IconThemeData(size: 35.5, color: Colors.deepPurple),
      ),
      endDrawer: MobileDrawer(),
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
                child: Sans("", 15.0),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
