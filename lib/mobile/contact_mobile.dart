import 'package:flutter/material.dart';
import 'package:portafolio_project/components.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.black)),
                    child: Image.asset(
                      'assets/yop-circle.png',
                      filterQuality: FilterQuality.high,
                    ),
                  )),
              TabsMobile(text: "Home", route: '/'),
              SizedBox(height: 20),
              TabsMobile(text: "Works", route: '/works'),
              SizedBox(height: 20),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () async => await launchUrl(
                          Uri.parse("https://www.instagram.com")),
                      icon: SvgPicture.asset(
                        "assets/instagram.svg",
                        color: Colors.black,
                        width: 35,
                      )),
                  IconButton(
                      onPressed: () async =>
                          await launchUrl(Uri.parse("https://www.github.com")),
                      icon: SvgPicture.asset(
                        "assets/github.svg",
                        color: Colors.black,
                        width: 35,
                      )),
                ],
              )
            ],
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 400,
                iconTheme: IconThemeData(size: 35, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/contact_image.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.center,
              children: [
                SansBold("Contact me", 35),
                TextForm("First name", widthDevice / 1.4,
                    "Please type your first name", 1),
                TextForm("Last name", widthDevice / 1.4,
                    "Please type your last name", 1),
                TextForm("Phone number", widthDevice / 1.4,
                    "Please type your phone number", 1),
                TextForm("Email", widthDevice / 1.4,
                    "Please type your email address", 1),
                TextForm("Message", widthDevice / 1.4,
                    "Please type your message", 10),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  height: 60,
                  minWidth: widthDevice / 2.2,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20),
                ),
              ],
            ),
          ),
        ));
  }
}
