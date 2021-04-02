import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_hubweb/Provider/signup_provider.dart';
import 'package:provider/provider.dart';
import '../Landing Page/landing_home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SignIn.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String title = 'DROPDOWNButton';
  List _cityname = ["India", "Malaysia"];
  String _cityval;
  String em_error;
  bool em_val=false;
  String pas_error;
  bool pas_val=false;
  var font1 = GoogleFonts.manrope(fontSize: 32, fontWeight: FontWeight.w600);
  var font2 = GoogleFonts.manrope(fontSize: 24, fontWeight: FontWeight.w600);
  var font3 = GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600);
  var font4 = GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600);
  var font5 = GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white);
  var font6 = GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.orange);
  String url = 'http://211.24.73.35:8000/graphql';

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void goToSignIn(BuildContext context){
    Navigator.pushNamed(context, SignIn.routeName);
  }

//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    getCountryList();
//  }

//  getCountryList()async{
//    var data = await getCountryData();
//    print(data['getCountriesList']['data']);
//    setState(() {});
//  }
  @override
  Widget build(BuildContext context) {
    var signUpData = Provider.of<SignUpProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
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
                                    'Have a project in mind or Business inquiry?',
                                    style: font2,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Drop us a line.',
                                    style: font2,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'There are many variations of passages of lorem ipsum available',
                                    style: font3,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'but the majority have suffered alteration in some form by injected.',
                                    style: font3,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'humour.',
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right:8.0),
                                        child: TextButton(onPressed: () {
                                          goToSignIn(context);
                                        }, child: Text('Have an account? Sign in',style: TextStyle(color:Colors.grey),)),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Start your FREE 14-day trial now',
                                    style: font1,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1, horizontal: 80),
                                          child: TextField(
                                              onChanged: (v){
                                                if(v.trim().isEmpty) {
                                                  setState(() {
                                                    em_error = 'This field is required';
                                                    em_val=true;
                                                  });
                                                }
                                                else{
                                                  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(v);
                                                  if(!emailValid) {
                                                    setState(() {
                                                      em_error = 'Invalid email address';
                                                      em_val=true;
                                                    });
                                                  }else{
                                                    //checkEmailExists(v);
                                                    setState(() {
                                                      em_val=false;
                                                      em_error=null;
                                                    });
                                                  }
                                                }
                                              },
                                              controller: emailController,
                                              decoration: InputDecoration(
                                                errorText: em_val ?em_error:null,
                                                hintText: 'Email',
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 2,
                                                  ),
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 18, horizontal: 80),
                                    child: TextField(
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        controller: passwordController,
                                        onChanged: (v){
                                          if(v.trim().isEmpty) {
                                            setState(() {
                                              pas_error = 'This field is required';
                                              pas_val=true;
                                            });
                                          }
                                          else{
                                            if(v.length<4) {
                                              setState(() {
                                                pas_error = 'Password too short';
                                                pas_val=true;
                                              });
                                            }else{
                                              setState(() {
                                                pas_val=false;
                                                pas_error=null;
                                              });
                                            }
                                          }
                                        },
                                        decoration: InputDecoration(
                                          hintText: 'Password',
                                          errorText: pas_val ?pas_error:null,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 2,
                                            ),
                                          ),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 80),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black38),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      padding: EdgeInsets.only(right: 8, left: 8),
                                      child: DropdownButton(
                                          underline: Container(
                                            height: 2,
                                            color: Colors.white,
                                          ),
                                          hint: Text("  Select Country"),
                                          isExpanded: true,
                                          value: _cityval,
                                          onChanged: (value) {
                                            setState(() {
                                              _cityval = value;
                                            });
                                          },
                                          items: _cityname.map((value) {
                                            return DropdownMenuItem(
                                                value: value, child: Text(value));
                                          }).toList()),
                                    ),
                                    // child: TextField(
                                    //     decoration: InputDecoration(
                                    //   hintText: 'Drop Down',
                                    //   border: OutlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //       width: 2,
                                    //     ),
                                    //   ),
                                    // )),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25.0),
                                                  side: BorderSide(color: Color(0xffef7f1a))
                                              )
                                          ),
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
                                        if(!em_val && !pas_val && _cityval!=null){
                                          signUpData.email = emailController.text;
                                          signUpData.password = passwordController.text;
                                          passwordController.text = passwordController.text;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => SignUp()));
                                        }
                                        else{
                                          print('AA');
                                          em_val=true;
                                          em_error = 'Invalid email address';
                                          pas_val=true;
                                          pas_error = 'This field is required';
                                          setState(() {});
                                        }
                                      },
                                      child: Text(
                                        'Let\'s go!',
                                        style: GoogleFonts.manrope(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      )
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('No credit card required.',style: TextStyle(color:Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('By signing up, you agree to GetHub’s Terms of Service.',style: TextStyle(color:Colors.grey))
                                ],
                                //                      MutationOptions options = MutationOptions(
                                //   documentNode: gql(a),
                                // ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
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

              ]))
        ],
      ),
    );
  }
}
