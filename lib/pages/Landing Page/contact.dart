import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Contact extends StatelessWidget {
  static const routeName = 'Contact';
  @override
  Widget build(BuildContext context) {
    var font5 = GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white);
    var font6 = GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.orange);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        padding: EdgeInsets.all(deviceWidth* .05),
        width: deviceWidth,
        height: deviceHeight* .5,
        color: Color(0xFF192841),
        child: Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Image.asset('images/logo.png',color: Colors.white,),
    Text('Lorem ipsum dolor sit amet consect\nadipiscing elit, sed do eiusmod tempor\nincididunt labore at dolore',style: font5,),
    Text('© 2021 Get Hub. All rights reserved.',style: font5,),
  ],
),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Company',style: font6,),

                Text('Features',style: font5,),
                Text('Plan',style: font5,),
                Text('Blog',style: font5,),
                Text('Contact',style: font5,),
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Support',style: font6,),

                Text('Carriers',style: font5,),
                Text('Help',style: font5,),
                Text('Privacy Policy',style: font5,),
                Text('Terms',style: font5,),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: deviceWidth*.013),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Newsletter',style: font6,),
                  SizedBox(height: deviceWidth* .015,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                          border: Border.all(color: Colors.grey,width: 1.5)
                        ),
                        width: deviceWidth* .115,
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: TextField(

                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_rounded,color: Colors.black,),
                              hintText: 'Email Address',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .025 ),
                        color: Colors.orange,
                        child: Text('Subscribe',style: font5,),
                      ),

                    ],
                  ),
                  Text(''),
                  Text(''),
                  Text(''),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
