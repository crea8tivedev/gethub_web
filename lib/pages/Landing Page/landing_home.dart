import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get_hubweb/pages/signup/SignUp1.dart';
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
  void goToLoginPage(BuildContext context){
    Navigator.pushNamed(context, SignUp1.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 84,
              backgroundColor: Colors.white,
              pinned: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(child: Image.asset('images/logo.png')),
                    SizedBox(width: MediaQuery.of(context).size.width*0.25,),
                    Container(child: Row(children: [
                      HeadText(
                        title: "Home",
                        onPressed: () {
                        },
                      ),
                      SizedBox(width: 10,),
                      HeadText(
                        title: "Features",
                        onPressed: () {
                        },
                      ),
                      SizedBox(width: 10,),
                      HeadText(
                        title: "Plans",
                        onPressed: () {},
                      ),
                      SizedBox(width: 10,),
                      HeadText(
                        title: "FAQ",
                        onPressed: () {},
                      ),
                      SizedBox(width: 10,),
                      HeadText(
                        title: "Blog",
                        onPressed: () {},
                      ),
                      SizedBox(width: 10,),
                      HeadText(
                        title: "Contact",
                        onPressed: () {},
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith(
                                      (states) => Color(0xffef7f1a)),
                              overlayColor: MaterialStateProperty.resolveWith(
                                      (states) => Color(0xff475668)),
                              padding: MaterialStateProperty.resolveWith((states) =>
                                  EdgeInsets.symmetric(vertical: 20, horizontal: 50))),
                          onPressed: () {
                            goToLoginPage(context);
                          },
                          child: Text(
                            'Start Free Trial',
                            style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ))
                    ],),
                    )
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
                  SizedBox(height: 50,)
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
