import 'package:flutter/material.dart';
import 'package:portafolio_project/components.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final formkey = GlobalKey<FormState>();

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
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
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
        body: SingleChildScrollView(
          child: Column(
            key: formkey,
            children: [
              SizedBox(
                height: 30,
              ),
              SansBold("Contact me", 40),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextForm("First name", 350, "Please type first name", 1,
                      firstNameController, (text) {
                    if (text.toString().isEmpty) {
                      return "Last name is required";
                    }
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  TextForm("Email", 350, "Please type email addresss", 1,
                      emailController, (text) {
                    if (text.toString().isEmpty) {
                      return "Last name is required";
                    }
                  })
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextForm("Last name", 350, "Please type last name", 1,
                      lastNameController, (text) {
                    if (text.toString().isEmpty) {
                      return "Last name is required";
                    }
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  TextForm("Phone number", 350, "Please type your phone number",
                      1, phoneController, (text) {
                    if (text.toString().isEmpty) {
                      return "Last name is required";
                    }
                  })
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextForm("Message", widthDevice / 1.5, "Please type your message",
                  10, messageController, (text) {
                if (text.toString().isEmpty) {
                  return "Last name is required";
                }
              }),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 60,
                minWidth: 200,
                color: Colors.tealAccent,
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
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
    return const Placeholder();
  }
}
