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
                    SansBold("Hello! I'm Sebastián", 15),
                    SizedBox(
                      height: 5,
                    ),
                    Sans(
                        "I'm a web & mobile developer searching for new projects",
                        15),
                    Sans(
                        "and challenges to achieve, implementing methologies like",
                        15),
                    Sans("Design thinking, DevOps and IaC.", 15),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        tealContainer(text: "Flutter"),
                        SizedBox(
                          width: 7,
                        ),
                        tealContainer(text: "React"),
                        SizedBox(
                          width: 7,
                        ),
                        tealContainer(text: "Firebase"),
                        SizedBox(
                          width: 7,
                        ),
                        tealContainer(text: "MySql"),
                        SizedBox(
                          width: 7,
                        )
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 143,
                  backgroundColor: Colors.deepPurple[50],
                  child: CircleAvatar(
                    child: Image.asset(
                      ("assets/yop-circle.png"),
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
                    SansBold("Web development", 30),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                        "Creation of responsive, scalable, and secure web solutions, designed to deliver optimal performance and meet the unique needs of each project.",
                        15)
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
                  children: [
                    SansBold("Software engineering", 30),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                        "End-to-end software engineering solutions, focusing on building efficient, maintainable, and scalable applications tailored to meet diverse user needs and business goals.",
                        15),
                  ],
                ),
              ),
              AnimatedCard(
                imagePath: "assets/software.png",
                height: 250,
                width: 250,
                reverse: true,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/app.png",
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("App development", 30),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                        "Multiplatform and native Android app development, designed to be flexible and adaptable to any specific need or requirement.",
                        15)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
