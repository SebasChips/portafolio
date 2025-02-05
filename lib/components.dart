import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

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
        onPressed: () {});
  }
}

class _TabsWebState extends State<TabsWeb> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -8))],
                  color: Colors.transparent,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent)
              : GoogleFonts.oswald(color: Colors.black, fontSize: 20),
          child: Text(
            widget.title,
          ),
        ));
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
    return Text(text,
        style: GoogleFonts.openSans(
          fontSize: size,
        ));
  }
}

class TextForm extends StatelessWidget {
  final text;
  final ContainerWidth;
  final hintText;
  final int? maxLines;
  const TextForm(@required this.text, @required this.ContainerWidth,
      @required this.hintText, this.maxLines);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: ContainerWidth,
          child: TextFormField(
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(fontSize: 14)),
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
      @required this.text,
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
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
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
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200 : widget.height,
                width: widget.width == null ? 200 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(
                height: 10,
              ),
              SansBold(widget.text, 15)
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
              color: Colors.tealAccent, style: BorderStyle.solid, width: 2),
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
