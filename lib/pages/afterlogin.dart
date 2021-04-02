import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_hubweb/pages/Landing%20Page/landing_home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signup/SignUp1.dart';

class AfterLogin extends StatefulWidget {
  static const routeName = 'AfterLogin';
  @override
  _AfterLoginState createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  void goToLoginPage(BuildContext context){
    Navigator.pushNamed(context, SignUp1.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
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
                MainWidget(),
              ]))
        ],
      ),
    );
  }
}


class MainWidget extends StatelessWidget {
  Color red = Color(0xffc00000);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(child: Padding(
      padding: const EdgeInsets.all(100.0),
      child: Column(children: [
        Text('WELCOME USER'),
        SizedBox(height: 20,),
        TextButton(child: Text('LOGOUT'), onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingHome()));
        },)
      ],)
    ),);
  }
  Widget bigSpace(context){
    double height = MediaQuery.of(context).size.height;
    return SizedBox(height: height*0.045,);
  }

  Widget smallSpace(context){
    double height = MediaQuery.of(context).size.height;
    return SizedBox(height: height*0.038,);
  }
  Widget twoSideSmall(one,two,context,[bold]){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(one,style: TextStyle(color: Colors.black54,fontSize: width*0.01)),
        ],
      ),
      SizedBox(width: width*0.025,),
      Flexible(child: Text(two,style: TextStyle(color: Colors.black54,fontSize: width*0.0118,fontWeight: bold!=null?FontWeight.w800:FontWeight.w500)))
    ],);
  }

  Widget twoSideTitle(one,two,context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(children: [
      Text(one,style: TextStyle(color: red,fontSize: width*0.014,fontWeight: FontWeight.w700)),
      SizedBox(width: width*0.025,),
      Text(two,style: TextStyle(color: red,fontSize: width*0.014,fontWeight: FontWeight.w700))
    ],);
  }
}
