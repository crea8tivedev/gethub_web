import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homeFont1 = GoogleFonts.manrope(
        fontSize: 46, color: Colors.white, fontWeight: FontWeight.w600);
    var homeFont2 = GoogleFonts.manrope(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300);
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('images/hero-bg1.jpg'),
        Container(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 189),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Put your entire store online in just a few clicks',
                          style: homeFont1,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'There are many variations of passages of lorem ipsum available but the majority have suffered alteration in some form.',
                          style: homeFont2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Sed quia non numquam eius modi tempora.',
                          style: homeFont2,
                        ),
                        SizedBox(height: 20,),
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
                              'Start Free Trial',
                              style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.deepOrange),
                            ))
                      ],
                    ),
                  )),
              Expanded(child: Image.asset('images/hero-img-mac.png')),
            ],
          ),
        )
      ],
    );
  }
}
