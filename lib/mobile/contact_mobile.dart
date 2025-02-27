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
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    final formkey = GlobalKey<FormState>();

    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
                    child: Image.asset(
                      'assets/yop-circle.png',
                      filterQuality: FilterQuality.high,
                    ),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 400.0,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
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
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Wrap(
              key: formkey,
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
                    "Phone number",
                    widthDevice / 1.4,
                    "Please type your phone number",
                    1,
                    phoneController, (text) {
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
                TextForm("Message", widthDevice / 1.4,
                    "Please type your message", 10, lastNameController, (text) {
                  if (text.toString().isEmpty) {
                    return "Last name is required";
                  }
                }),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: widthDevice / 2.2,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
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
          ),
        ));
  }
}
