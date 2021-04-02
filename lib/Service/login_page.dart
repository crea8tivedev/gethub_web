import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_hubweb/Landing%20Page/landing_home.dart';
import 'package:get_hubweb/Service/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var font1 = GoogleFonts.manrope(fontSize: 32, fontWeight: FontWeight.w600);
  var font2 = GoogleFonts.manrope(fontSize: 24, fontWeight: FontWeight.w600);
  var font3 = GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600);
  var font4 = GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 84,
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: 84.0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('images/logo.png'),
                  Container(
                    child: Row(
                      children: [
                        HeadText(
                          title: "Home",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LandingHome()));
                          },
                        ),
                        HeadText(
                          title: "About",
                          onPressed: () {},
                        ),
                        HeadText(
                          title: "Contact",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              stretchModes: [StretchMode.blurBackground],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('images/section-bg1.png'),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: 150),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Let’s talk about everything!',
                            style: font1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Have a project in mind or Business inquiry? Drop us a line.',
                            style: font2,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'There are many variations of passages of lorem ipsum available but the majority have suffered alteration in some form by injected humour.',
                            style: font3,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Our Timings',
                            style: font4,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mon - Fri : 9:00am to 5:30pm',
                            style: font3,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Saturday : 10:00am to 5:00pm',
                            style: font3,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Sunday : Closed.',
                            style: font3,
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Start your FREE 14-day trial now',
                            style: font1,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                    decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2,
                                    ),
                                  ),
                                )),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: TextField(
                                    decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2,
                                    ),
                                  ),
                                )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: 'Drop Down',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                ),
                              ),
                            )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Color(0xffef7f1a)),
                                  overlayColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Color(0xff475668)),
                                  padding: MaterialStateProperty.resolveWith(
                                      (states) => EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 50))),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: Text(
                                'Start Free Trial',
                                style: GoogleFonts.manrope(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                          TextButton(onPressed: () {

                          }, child: Text('press')),

                        ],
                      ),
                    )),
                  ],
                ),
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
