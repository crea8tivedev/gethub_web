import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_hubweb/pages/Landing%20Page/landing_home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signup/SignUp1.dart';

class TermsAndCondition extends StatefulWidget {
  static const routeName = 'TermsAndCondition';
  @override
  _TermsAndConditionState createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
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
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.15),
          child: Column(children: [
            SizedBox(height: height*0.04,),
            Text('GETHUB MERCHANT TERMS OF USE',style: TextStyle(color: red,fontSize: width*0.02,fontWeight: FontWeight.w700),),
            bigSpace(context),
            Row(children: [
              Text('SECTION A - GENERAL TERMS',style: TextStyle(color: red,fontSize: width*0.016,fontWeight: FontWeight.w700))
            ],),

            bigSpace(context),

            twoSideTitle("1","APPLICATION OF TERMS",context),
            smallSpace(context),
            twoSideSmall("1.1","These Terms (as defined herein) apply to the Merchant’s (as defined below) access and use of the Service (as defined below). By setting up an account, accessing and/or using the Service, you agree that you have read, understood and agreed to these Terms and these Terms shall constitute a legally binding agreement between you and StoreHub (as defined below). If you do not agree to these Terms, you are not authorised to access and use the Service, and you must immediately stop doing so.",context),
            smallSpace(context),
            twoSideSmall("1.2","The Merchant must be 18 years or older or at least the age of majority in the jurisdiction where the Merchant resides or from which the Merchant uses the Service.",context),

            bigSpace(context),

            twoSideTitle("2","CHANGES",context),
            smallSpace(context),
            twoSideSmall("1.1","We may change these Terms at any time by notifying you of the changes by email or by posting a notice on the Website (as defined below). Unless stated otherwise, the changes take effect from the date set out in the notice. You are responsible for ensuring that you are familiar with the latest Terms. By continuing to access and use the Service from the date on which the Terms are changed, you are bound by the revised Terms, whether or not reviewed by you.",context),
            smallSpace(context),
            twoSideSmall("1.2","These Terms were last updated on 22 January 2021.",context,true),
          ],),
        )
      ],
    );
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
