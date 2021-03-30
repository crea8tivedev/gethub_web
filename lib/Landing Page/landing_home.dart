import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features.dart';
import 'home.dart';
import 'plan.dart';

class LandingHome extends StatefulWidget {
  @override
  _LandingHomeState createState() => _LandingHomeState();
}

class _LandingHomeState extends State<LandingHome> {
  var homeFont1 = GoogleFonts.manrope(
      fontSize: 46, color: Colors.white, fontWeight: FontWeight.w600);
  var homeFont2 = GoogleFonts.manrope(
      fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          toolbarHeight: 84,
          backgroundColor: Colors.white,
          pinned: true,
          expandedHeight: 84.0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          flexibleSpace: FlexibleSpaceBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logo.png'),
                HeadText(
                  title: "Home",
                  onPressed: () {},
                ),
                HeadText(
                  title: "Features",
                  onPressed: () {},
                ),
                HeadText(
                  title: "Plans",
                  onPressed: () {},
                ),
                HeadText(
                  title: "FAQ",
                  onPressed: () {},
                ),
                HeadText(
                  title: "Blog",
                  onPressed: () {},
                ),
                HeadText(
                  title: "Contact",
                  onPressed: () {},
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Color(0xffef7f1a)),
                        overlayColor: MaterialStateProperty.resolveWith(
                            (states) => Color(0xff475668)),
                        padding: MaterialStateProperty.resolveWith((states) =>
                            EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50))),
                    onPressed: () {},
                    child: Text(
                      'Start Free Trial',
                      style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ))
              ],
            ),
            stretchModes: [StretchMode.blurBackground],
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Home(),
          Features(),
          Plan(),
        ]))
      ],
    ));
  }
}

class HeadText extends StatelessWidget {
  final title;
  final onPressed;

  const HeadText({Key key, this.title, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith((states) =>
                EdgeInsets.symmetric(vertical: 10, horizontal: 20))),
        onPressed: onPressed,
        child: Text(
          title,
          style: GoogleFonts.manrope(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ));
  }
}
