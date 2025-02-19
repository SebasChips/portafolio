import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio_project/components.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        child: SansBold("hey soy", 15)),
                    SizedBox(
                      height: 15,
                    ),
                    SansBold("Sebastián Béjar", 45),
                    Sans("Flutter developer", 35),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(height: 20),
                        Sans("sebastianalarconbejar@gmail.com", 12)
                      ],
                    ),
                    Row(children: [
                      Icon(Icons.call),
                      SizedBox(height: 20),
                      Sans("+52 4423237924", 12)
                    ]),
                    Row(children: [
                      Icon(Icons.location_city),
                      SizedBox(height: 20),
                      Sans("Querétaro, México", 12)
                    ]),
                  ],
                ),
                CircleAvatar(
                  radius: 143,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/yop-circle.png"),
                    radius: 140,
                  ),
                ),
              ],
            ),
          ),
          //Second section
          Container(
              height: heightDevice - 1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/works.jpg",
                    height: widthDevice / .8,
                    width: widthDevice /
                        2, // Ancho de la imagen (puedes ajustar este valor)
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold("About me", 38),
                      SizedBox(
                        height: 15,
                      ),
                      Sans("Heyyyy it's me", 15),
                      Sans("App security for Android, web Ios, MacOS", 15),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Sans("Flutter", 20),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )),
          //Third section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                    ),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 38),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm("First name", 350, "Type your name:", 2),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm("Email", 350, "Type your email address", 2)
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            "Last name", 350, "Please type your last name", 2),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm("Phone number", 350,
                            "Please type your phone number", 2)
                      ],
                    )
                  ],
                ),
                TextForm("Message: ", widthDevice / 1.5,
                    "Please type your message", 10),
                MaterialButton(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    minWidth: 200,
                    color: Colors.tealAccent,
                    child: SansBold("Submit", 20),
                    onPressed: () {})
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
