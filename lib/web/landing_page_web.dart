import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:portafolio_project/components.dart';

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
      drawer: WebDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(size: 25, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: TabsWebList(),
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
                            color: Colors.deepPurple[50],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: SansBold("Hey I'm", 15)),
                    SizedBox(
                      height: 15,
                    ),
                    SansBold("Sebastián Alberto Alarcón Béjar", 25),
                    Sans("Web and mobile developer", 18),
                    SizedBox(height: 7),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(height: 20),
                        Sans(" sebastianalarconbejar@gmail.com", 15)
                      ],
                    ),
                    Row(children: [
                      Icon(Icons.call),
                      SizedBox(height: 20),
                      Sans("+52 442 323 7924", 15)
                    ]),
                    Row(children: [
                      Icon(Icons.location_city),
                      SizedBox(height: 20),
                      Sans(" Querétaro, México", 15)
                    ]),
                  ],
                ),
                CircleAvatar(
                  radius: 143,
                  backgroundColor: Colors.deepPurple[50],
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
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/works.jpg",
                height: heightDevice / 1.5,
                width: widthDevice / 2,
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
                  SizedBox(
                    width: 400,
                    child: Sans(
                        "I am a Software Engineer with a strong passion for web and mobile application development. Committed to building optimized, secure, and scalable solutions while adhering to best coding practices.",
                        15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SansBold("Backend", 15),
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
                      imagePath: "assets/software.png",
                      text: "Software engineering \n implementations",
                    ),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "App development",
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ContactFormWeb(),

          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
