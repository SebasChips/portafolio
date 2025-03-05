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
  var logger = Logger();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final formkey = GlobalKey<FormState>();

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
              backgroundColor: Colors.deepPurple[50],
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
                    Sans("Web and mobile developer", 15),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(height: 20),
                        Sans(" sebastianalarconbejar@gmail.com", 12)
                      ],
                    ),
                    Row(children: [
                      Icon(Icons.call),
                      SizedBox(height: 20),
                      Sans("+52 442 323 7924", 12)
                    ]),
                    Row(children: [
                      Icon(Icons.location_city),
                      SizedBox(height: 20),
                      Sans(" Querétaro, México", 12)
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
                      tealContainer(text: "JWT")
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
          Container(
            height: heightDevice,
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("Contact me", 38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextForm("First name", 350, "Type your name:", 2,
                              firstNameController, (text) {
                            if (text.toString().isEmpty) {
                              return "First name is required";
                            }
                          }),
                          SizedBox(
                            height: 15,
                          ),
                          TextForm("Email", 350, "Type your email address", 2,
                              emailController, (text) {
                            if (text.toString().isEmpty) {
                              return "First name is required";
                            }
                          })
                        ],
                      ),
                      Column(
                        children: [
                          TextForm(
                              "Last name",
                              350,
                              "Please type your last name",
                              2,
                              lastNameController, (text) {
                            if (text.toString().isEmpty) {
                              return "Last name is required";
                            }
                          }),
                          SizedBox(
                            height: 15,
                          ),
                          TextForm(
                              "Phone number",
                              350,
                              "Please type your phone number",
                              2,
                              phoneController, (text) {
                            if (text.toString().isEmpty) {
                              return "Phone is required";
                            }
                          })
                        ],
                      )
                    ],
                  ),
                  TextForm(
                      "Message: ",
                      widthDevice / 1.5,
                      "Please type your message",
                      10,
                      messageController, (text) {
                    if (text.toString().isEmpty) {
                      return "Message is required";
                    }
                  }),
                  MaterialButton(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    height: 60.0,
                    minWidth: 200.0,
                    color: Colors.deepPurple[50],
                    child: SansBold("Submit", 20.0),
                    onPressed: () async {
                      final addData = new AddDataFirestore();
                      if (formkey.currentState!.validate()) {
                        await addData.addResponse(
                            firstNameController.text,
                            lastNameController.text,
                            emailController.text,
                            phoneController.text,
                            messageController.text);
                        formkey.currentState!.reset();
                        DialogError(context);
                      }
                    },
                  )
                ],
              ),
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
