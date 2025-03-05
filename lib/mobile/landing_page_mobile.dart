import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio_project/components.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    final formkey = GlobalKey<FormState>();

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
                      onPressed: () async => await launchUrl(
                          Uri.parse("https://www.instagram.com")),
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
            CircleAvatar(
              radius: 113.0,
              backgroundColor: Colors.deepPurple,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/yop-circle.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[50],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0))),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: SansBold("Hey I'm", 15.0),
                        ),
                        SansBold("Sebastián Alberto Alarcón Béjar", 25.0),
                        Sans("Web and mobile developer", 18.0)
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 3.0,
                          children: [
                            Icon(Icons.email),
                            Icon(Icons.call),
                            Icon(Icons.location_pin),
                          ],
                        ),
                        SizedBox(width: 40.0),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 9.0,
                          children: [
                            Sans("sebastianalarconbejar@gmail.com", 15.0),
                            Sans("+52 442 323 7924", 15.0),
                            Sans("Querétaro, México", 15.0)
                          ],
                        )
                      ],
                    )
                  ]),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 35.0),
                  Sans(
                      "I am a Software Engineer with a strong passion for web and mobile application development. Committed to building optimized, secure, and scalable solutions while adhering to best coding practices.",
                      15.0),
                  SizedBox(height: 10.0),
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
            ),
            SizedBox(
              height: 60.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("What I do?", 35.0),
                AnimatedCard(
                  imagePath: "assets/webL.png",
                  text: "Web development",
                  width: 300.0,
                  height: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/software.png",
                  text: "Software engineering",
                  width: 300.0,
                  height: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/app.png",
                  text: "App development",
                  width: 300.0,
                  height: 300.0,
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              alignment: WrapAlignment.center,
              children: [
                SansBold("Contact me", 35.0),
                TextForm(
                    "First name",
                    widthDevice / 1.4,
                    "Please type your first name",
                    1,
                    firstNameController, (text) {
                  if (text.toString().isEmpty) {
                    return "Last name is required";
                  }
                }),
                TextForm(
                    "Last name",
                    widthDevice / 1.4,
                    "Please type your last name",
                    1,
                    lastNameController, (text) {
                  if (text.toString().isEmpty) {
                    return "Last name is required";
                  }
                }),
                TextForm(
                    "Email",
                    widthDevice / 1.4,
                    "Please type your email address",
                    1,
                    emailController, (text) {
                  if (text.toString().isEmpty) {
                    return "Last name is required";
                  }
                }),
                TextForm(
                    "Phone number",
                    widthDevice / 1.4,
                    "Please type your phone number",
                    2,
                    phoneController, (text) {
                  if (text.toString().isEmpty) {
                    return "Last name is required";
                  }
                }),
                TextForm("Message", widthDevice / 1.4, "Message", 10,
                    messageController, (text) {
                  if (text.toString().isEmpty) {
                    return "Last name is required";
                  }
                }),
                MaterialButton(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 60,
                  minWidth: 200,
                  color: Colors.deepPurple[100],
                  child: SansBold("Submit", 20),
                  onPressed: () async {
                    final addData = AddDataFirestore();
                    if (formkey.currentState!.validate()) {
                      await addData.addResponse(
                        firstNameController.text,
                        lastNameController.text,
                        emailController.text,
                        phoneController.text,
                        messageController.text,
                      );
                      formkey.currentState!.reset();
                      DialogError(context);
                    }
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
