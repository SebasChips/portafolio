import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  AnimatedCard(
                    imagePath: "assets/app.png",
                    height: 200,
                    width: 300,
                  ),
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Portafolio", 30.0),
                        SizedBox(
                          height: 15,
                        ),
                        Sans("Deployed on Android, Ios and web", 15)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
