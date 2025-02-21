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
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/yop.png"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SansBold("Sebastián Alberto Alarcón Béjar", 30),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse("https://www.instagram.com/sebas.chips/"));
                    },
                    icon: SvgPicture.asset(
                      "assets/instagram.svg",
                      width: 35,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse("https://www.instagram.com/sebas.chips/"));
                    },
                    icon: SvgPicture.asset(
                      "assets/github.svg",
                      width: 35,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse("https://www.github.com"));
                    },
                    icon: SvgPicture.asset(
                      "assets/instagram.svg",
                      width: 35,
                      color: Colors.black,
                    )),
              ],
            ),
          ]),
        ),
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool ineerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 25, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(),
                title: Row(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    TabsWeb(
                      title: "Web",
                      route: '/',
                    ),
                    Spacer(),
                    TabsWeb(
                      title: "Works",
                      route: '/works',
                    ),
                    Spacer(),
                    TabsWeb(
                      title: "About",
                      route: '/about',
                    ),
                    Spacer(),
                    TabsWeb(
                      title: "Works",
                      route: '/works',
                    )
                  ],
                ),
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
