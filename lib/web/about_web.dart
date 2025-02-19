import 'package:flutter/material.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 69,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/yop.png"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SansBold("Sebastián Alberto Alarcón Béjar", 25),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrlLinks(
                    url: "https://www.instagram.com/sebas.chips/",
                    image: "assets/instagram.svg"),
                UrlLinks(
                    url: "https://www.twitter.com/tomcruise/",
                    image: "assets/twitter.svg"),
                UrlLinks(
                    url: "https://www.github.com/SebasChips/",
                    image: "assets/github.svg"),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(size: 25, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Spacer(
              flex: 4,
            ),
            TabsWeb(title: "Home", route: "/"),
            Spacer(),
            TabsWeb(title: "Works", route: "/works"),
            Spacer(),
            TabsWeb(title: "Blog", route: "/blog"),
            Spacer(),
            TabsWeb(title: "About", route: "/about"),
            Spacer(),
            TabsWeb(title: "Contact", route: "/contact"),
          ],
        ),
      ),
      body: ListView(
        children: [
          //First section
          SizedBox(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40),
                    SizedBox(
                      height: 15,
                    ),
                    Sans("Hello! I'm Sebastián", 15),
                    Sans(
                        "I Strive to ensure astounding performance with state of",
                        15),
                    Sans(
                        "The art security for Android,Ios, Web, Mac, Linux nad ",
                        15),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        tealContainer(text: "Flutter"),
                        SizedBox(
                          width: 7,
                        ),
                        tealContainer(text: "Firebasea"),
                        SizedBox(
                          width: 7,
                        ),
                        tealContainer(text: "Android"),
                        SizedBox(
                          width: 7,
                        ),
                        tealContainer(text: "Ios"),
                        SizedBox(
                          width: 7,
                        )
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 143,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    child: Image.asset(
                      ("asssets/yop-circle.png"),
                      filterQuality: FilterQuality.high,
                    ),
                    radius: 140,
                  ),
                ),
              ],
            ),
          ),
          //Second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/webL.png",
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Web devolopment", 30),
                    SizedBox(
                      height: 15,
                    ),
                    Sans("Im here to do stuff", 15)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //Third section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [SansBold("App development", 15)],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
