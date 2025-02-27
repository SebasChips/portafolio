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
        color: Colors.black,
        minWidth: 200,
        child: Text(
          widget.text,
          style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
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
                    borderSide: BorderSide(color: Colors.teal),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontSize: 15,
                      ),
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
  Future<void> addResponse(final firstName, final lastName, final email,
      final phoneNumber, final message) async {
    return response
        .add({
          'first name': firstName,
          'last name': lastName,
          'email': email,
          'phone': phoneNumber,
          'message': message,
        })
        .then((value) => logger.d("Success"))
        .catchError((error) => logger.d(error));
  }
}

Future DialogError(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: SansBold("Message submited", 20.0),
          ));
}
