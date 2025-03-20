import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:logger/logger.dart';

class TabsWeb extends StatefulWidget {
  final title;
  final route;
  const TabsWeb({super.key, this.title, this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({super.key, @required this.text, @required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        height: 20,
        color: Color.fromRGBO(236, 231, 245, 1),
        minWidth: 200,
        child: Text(
          widget.text,
          style: GoogleFonts.openSans(fontSize: 20, color: Colors.black),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(widget.route);
        });
  }
}

class _TabsWebState extends State<TabsWeb> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
          onEnter: (_) {
            setState(() {
              select = true;
            });
          },
          onExit: (_) {
            setState(() {
              select = false;
            });
          },
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 100),
            curve: Curves.elasticIn,
            style: select
                ? GoogleFonts.oswald(
                    shadows: [
                        Shadow(color: Colors.black, offset: Offset(0, -8))
                      ],
                    color: Colors.transparent,
                    fontSize: 25,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: Colors.deepPurple)
                : GoogleFonts.oswald(color: Colors.black, fontSize: 20),
            child: Text(
              widget.title,
            ),
          )),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:
            GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold));
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;

  const Sans(this.text, this.size);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final text;
  final ContainerWidth;
  final hintText;
  final int maxLines;
  final controller;
  final validator;

  const TextForm(@required this.text, @required this.ContainerWidth,
      @required this.hintText, this.maxLines, this.controller, this.validator);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16.0),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: ContainerWidth,
          child: TextFormField(
            validator: validator,
            controller: controller,
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurple, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(fontSize: 14.0)),
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;
  const AnimatedCard(
      {super.key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width});

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0.0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0.0, 0.08),
  ).animate(_controller);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.deepPurple),
        ),
        shadowColor: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200.0 : widget.height,
                width: widget.width == null ? 200.0 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(
                height: 10.0,
              ),
              widget.text == null
                  ? SizedBox()
                  : Text(
                      widget.text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class UrlLinks extends StatelessWidget {
  final image;
  final url;
  const UrlLinks({super.key, @required this.url, this.image});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: SvgPicture.asset(
          image,
          color: Colors.black,
          width: 35,
        ),
        onPressed: () async {
          await launchUrl(Uri.parse(url));
        });
  }
}

class tealContainer extends StatelessWidget {
  final text;
  const tealContainer({
    super.key,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.deepPurple, style: BorderStyle.solid, width: 2),
          borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.all(7),
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontSize: 15,
        ),
      ),
    );
  }
}

class AddDataFirestore {
  var logger = Logger();
  CollectionReference response =
      FirebaseFirestore.instance.collection(('messages'));
  Future addResponse(final firstName, final lastName, final email,
      final phoneNumber, final message) async {
    return response.add({
      'first name': firstName,
      'last name': lastName,
      'email': email,
      'phone': phoneNumber,
      'message': message,
    }).then((value) {
      logger.d("Success");
      return true;
    }).catchError((error) {
      logger.d(error);
      return false;
    });
  }
}

Future DialogError(BuildContext context, String message) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: SansBold(message, 20.0),
          ));
}

class TabsWebList extends StatefulWidget {
  const TabsWebList({super.key});

  @override
  State<TabsWebList> createState() => _TabsWebListState();
}

class _TabsWebListState extends State<TabsWebList> {
  @override
  Widget build(BuildContext context) {
    return const Row(
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
          title: "Contact",
          route: '/contact',
        )
      ],
    );
  }
}

class WebDrawer extends StatelessWidget {
  const WebDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 72,
            backgroundColor: Color.fromRGBO(236, 231, 245, 1),
            child: CircleAvatar(
              radius: 69,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/computer.jpg"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SansBold("Sebastián Alarcón Béjar", 25),
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
                  url: "https://www.github.com/SebasChips/",
                  image: "assets/github.svg"),
            ],
          )
        ],
      ),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.0,
                      color: Color.fromRGBO(236, 231, 245, 1),
                    )),
                child: Image.asset('assets/computer-circle.png'),
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
              UrlLinks(
                  url: "https://www.instagram.com/sebas.chips/",
                  image: "assets/instagram.svg"),
              UrlLinks(
                  url: "https://www.github.com/SebasChips/",
                  image: "assets/github.svg"),
            ],
          )
        ],
      ),
    );
  }
}

//variables
final TextEditingController firstNameController = TextEditingController();
final TextEditingController lastNameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController messageController = TextEditingController();

//classes
class ContactFormWeb extends StatefulWidget {
  const ContactFormWeb({super.key});

  @override
  State<ContactFormWeb> createState() => _ContactFormWebState();
}

class _ContactFormWebState extends State<ContactFormWeb> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
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
              TextForm("Phone number", 350, "Please type your phone number", 1,
                  phoneController, (text) {
                if (text.toString().isEmpty) {
                  return "Last name is required";
                }
              })
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextForm(
              "Message", 350, "Please type your message", 10, messageController,
              (text) {
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
            color: Colors.deepPurple[50],
            child: SansBold("Submit", 20),
            onPressed: () async {
              final addData = new AddDataFirestore();
              if (formkey.currentState!.validate()) {
                if (await addData.addResponse(
                    firstNameController.text,
                    lastNameController.text,
                    emailController.text,
                    phoneController.text,
                    messageController.text)) {
                  formkey.currentState!.reset();
                  DialogError(context, "Message sent succesfully!");
                } else {
                  DialogError(context, "Message fail to sent");
                }
              }
            },
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class ContactFormMobile extends StatefulWidget {
  const ContactFormMobile({super.key});

  @override
  State<ContactFormMobile> createState() => _ContactFormMobileState();
}

class _ContactFormMobileState extends State<ContactFormMobile> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Form(
      key: formkey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.0,
        alignment: WrapAlignment.center,
        children: [
          SansBold("Contact me", 35.0),
          TextForm("First name", widthDevice / 1.4,
              "Please type your first name", 1, firstNameController, (text) {
            if (text.toString().isEmpty) {
              return "Last name is required";
            }
          }),
          TextForm("Last name", widthDevice / 1.4, "Please type your last name",
              1, lastNameController, (text) {
            if (text.toString().isEmpty) {
              return "Last name is required";
            }
          }),
          TextForm("Email", widthDevice / 1.4, "Please type your email address",
              1, emailController, (text) {
            if (text.toString().isEmpty) {
              return "Last name is required";
            }
          }),
          TextForm("Phone number", widthDevice / 1.4,
              "Please type your phone number", 2, phoneController, (text) {
            if (text.toString().isEmpty) {
              return "Last name is required";
            }
          }),
          TextForm(
              "Message", widthDevice / 1.4, "Message", 10, messageController,
              (text) {
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
            minWidth: 200.0,
            color: Colors.deepPurple[50],
            child: SansBold("Submit", 20.0),
            onPressed: () async {
              final addData = new AddDataFirestore();
              if (formkey.currentState!.validate()) {
                if (await addData.addResponse(
                    firstNameController.text,
                    lastNameController.text,
                    emailController.text,
                    phoneController.text,
                    messageController.text)) {
                  formkey.currentState!.reset();
                  DialogError(context, "Message sent succesfully!");
                } else {
                  DialogError(context, "Message fail to sent");
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
