import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var headFont = GoogleFonts.manrope(fontSize: 38, fontWeight: FontWeight.w600);
    var headFont2 = GoogleFonts.manrope(fontSize: 32, fontWeight: FontWeight.w600);
    var headFont3 = GoogleFonts.manrope(fontSize: 60, fontWeight: FontWeight.w600);
    var headFont4 = GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600);
    var headFont5 = GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600);
    var headFont6 = GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white);
    var headFont7 = GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff475668));
    return Container(child: Column(children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('images/section-bg2.png'),
          Container(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text('Plans and pricing', style: headFont,),
              Text('Our pricing scales with you and your needs. Try it for free. No credit card required.'),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 200,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xfffbbe96),
                      child: Column(children: [
                        SizedBox(height: 5,),
                        Image.asset('images/ptable-icon1.png'),
                        SizedBox(height: 10,),
                        Text('Developer', style: headFont2,),
                        SizedBox(height: 15,),
                        Text('\$49', style: headFont3,),
                        SizedBox(height: 10,),
                        Text('per user/mo' , style: headFont4,),
                        SizedBox(height: 15,),
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
                            onPressed: () {},
                            child: Text(
                              'Signup for free',
                              style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                        Container(child: Column(children: [
                          SizedBox(height: 20,),
                          Text('Free Forever', style: headFont5,),
                          SizedBox(height: 15,),
                          Text('No credit card required',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('Unlimited team members',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('Unlimited cloud space',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('3 months of record history',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('Custom user interface',style: headFont7,),
                        ],),),
                        SizedBox(height: 5,),
                      ],),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xffef7f1a),
                      child: Column(children: [
                        SizedBox(height: 15,),
                        Image.asset('images/ptable-icon2.png'),
                        SizedBox(height: 15,),
                        Text('Professional', style: headFont2,),
                        SizedBox(height: 15,),
                        Text('\$99', style: headFont3,),
                        SizedBox(height: 10,),
                        Text('per user/mo' , style: headFont4,),
                        SizedBox(height: 15,),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.resolveWith(
                                        (states) => Colors.white),
                                overlayColor:
                                MaterialStateProperty.resolveWith(
                                        (states) => Color(0xff475668)),
                                padding: MaterialStateProperty.resolveWith(
                                        (states) => EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 50))),
                            onPressed: () {},
                            child: Text(
                              'Signup for free',
                              style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffef7f1a)),
                            )),
                        Container(child: Column(children: [
                          SizedBox(height: 20,),
                          Text('Free Forever', style: headFont5,),
                          SizedBox(height: 15,),
                          Text('No credit card required', style: headFont6,),
                          SizedBox(height: 10,),
                          Text('Unlimited team members', style: headFont6,),
                          SizedBox(height: 10,),
                          Text('Unlimited cloud space', style: headFont6,),
                          SizedBox(height: 10,),
                          Text('3 months of record history', style: headFont6,),
                          SizedBox(height: 10,),
                          Text('Custom user interface', style: headFont6,),
                        ],),),
                        SizedBox(height: 15,),
                      ],),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xfffbbe96),
                      child: Column(children: [
                        SizedBox(height: 5,),
                        Image.asset('images/ptable-icon3.png'),
                        SizedBox(height: 10,),
                        Text('Premium', style: headFont2,),
                        SizedBox(height: 15,),
                        Text('\$99', style: headFont3,),
                        SizedBox(height: 10,),
                        Text('per user/mo' , style: headFont4,),
                        SizedBox(height: 15,),
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
                            onPressed: () {},
                            child: Text(
                              'Signup for free',
                              style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                        Container(child: Column(children: [
                          SizedBox(height: 20,),
                          Text('Free Forever', style: headFont5,),
                          SizedBox(height: 15,),
                          Text('No credit card required',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('Unlimited team members',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('Unlimited cloud space',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('3 months of record history',style: headFont7,),
                          SizedBox(height: 10,),
                          Text('Custom user interface',style: headFont7,),
                        ],),),
                        SizedBox(height: 5,),
                      ],),
                    ),
                  ),
                  SizedBox(width: 200,),
                ],
              )
          ],),)
        ],
      )
    ],),);
  }
}
