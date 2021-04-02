import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var font1 = GoogleFonts.manrope(
        fontSize: 46, fontWeight: FontWeight.w600, color: Color(0xffef7f1a));
    var font2 = GoogleFonts.manrope(
        fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black);
    var font3 = GoogleFonts.manrope(
        fontSize: 46, fontWeight: FontWeight.w300, color: Colors.black);
    var font4 = GoogleFonts.manrope(
        fontSize: 30, fontWeight: FontWeight.w300, color: Colors.black);
    var font5 = GoogleFonts.manrope(
        fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 189),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Manage your online & offline business operations from 1 account',
                    style: font1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'There are many variations of passages of lor ipsum available but the majority have suffered alteration in some form by injected humour.',
                    style: font2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.',
                    style: font2,
                  ),
                  SizedBox(
                    height: 20,
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
                        'Discover',
                        style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ))
                ],
              ),
            )),
            Expanded(
                child: Container(
              child: Image.asset('images/screen-1.png'),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              child: Image.asset('images/screen-2.png'),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(right: 189),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'One product catalog for your store and online',
                    style: font1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'There are many variations of passages of lor ipsum available but the majority have suffered alteration in some form by injected humour.',
                    style: font2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.',
                    style: font2,
                  ),
                  SizedBox(
                    height: 20,
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
                        'Discover',
                        style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ))
                ],
              ),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 189),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Set up your online store in just minutes.',
                    style: font1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'There are many variations of passages of lor ipsum available but the majority have suffered alteration in some form by injected humour.',
                    style: font2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.',
                    style: font2,
                  ),
                  SizedBox(
                    height: 20,
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
                        'Discover',
                        style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ))
                ],
              ),
            )),
            Expanded(
                child: Container(
              child: Image.asset('images/screen-3.png'),
            )),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/section-bg1.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Card(child: Container(
                width: 320,
                height: 398,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Image.asset('images/shape-icon1.png'),
                  Text('Get Hub' , style: font3,),
                  Text('Implement' , style: font4,),
                  Text('There are many variations of passages of lorem ipsum dolor amet available.' , style: font5, textAlign: TextAlign.center,),
                  TextButton(onPressed: (){} , child: Text('Learn More'),),

                ],),
              ),),
              SizedBox(width: 20,),
              Card(child: Container(
                width: 320,
                height: 398,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/shape-icon2.png'),
                    Text('Get Hub' , style: font3,),
                    Text('secure' , style: font4,),
                    Text('There are many variations of passages of lorem ipsum dolor amet available.' , style: font5, textAlign: TextAlign.center,),
                    TextButton(onPressed: (){} , child: Text('Learn More'),),

                  ],),
              ),),
                SizedBox(width: 20,),
              Card(child: Container(
                width: 320,
                height: 398,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/shape-icon3.png'),
                    Text('Get Hub' , style: font3,),
                    Text('Automate' , style: font4,),
                    Text('There are many variations of passages of lorem ipsum dolor amet available.' , style: font5, textAlign: TextAlign.center,),
                    TextButton(onPressed: (){} , child: Text('Learn More'),),

                  ],),
              ),),
            ],)
          ],
        ),
        SizedBox(height: 30,),
        Container(
          child: Column(children: [
          Text('Why is Get Hub different?' , style: font3,),
            SizedBox(height: 30,),
          Row(children: [
            Expanded(
              child: Container(
                child:Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 30,),
                        CircleAvatar(child: Icon(Icons.person, color: Colors.white,), backgroundColor: Color(0xffef7f1a),),
                        CircleAvatar(child: Icon(Icons.mail, color: Colors.white,), backgroundColor: Color(0xffef7f1a),),
                        CircleAvatar(child: Icon(Icons.delivery_dining, color: Colors.white,), backgroundColor: Color(0xffef7f1a),),
                          SizedBox(height: 30,),

                      ],),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Container(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Developer-first coding' ,style: font4,),
                        Text('There are many variations of passages of lorem available.' ,style: font5,),
                      ],),),
                      SizedBox(height: 20,),
                      Container(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Leading incremental database' ,style: font4,),
                        Text('Nemo enim ipsam voluptatem quia voluptas sit.' ,style: font5,),
                      ],),),
                        SizedBox(height: 20,),
                      Container(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Automated work flow' ,style: font4,),
                        Text('Similique sunt in culpa qui officia deserunt mollitia animi.' ,style: font5,),
                      ],),),

                    ],),
                  ),
                ],
              ),),
            ),
            Expanded(child: Container(child: Image.asset('images/video-bg.jpg'),))
          ],)
        ],),),
      ],
    );
  }
}
