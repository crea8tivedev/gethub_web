import 'package:flutter/material.dart';
import 'package:get_hubweb/Provider/signup_provider.dart';
import 'package:provider/provider.dart';


import 'package:get_hubweb/pages/Landing Page/contact.dart';
import 'package:get_hubweb/pages/Landing Page/landing_home.dart';
import 'pages/signup/SignUp1.dart';
import 'pages/signup/SignUp2.dart';
import 'pages/signin/SignIn.dart';
import 'pages/terms.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> SignUpProvider())
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false,
        home: LandingHome(),
        routes: {
        Contact.routeName: (context) => Contact(),
          SignUp1.routeName: (context)=> SignUp1(),
          SignIn.routeName: (context)=> SignIn(),
          SignUp2.routeName: (context)=> SignUp2(),
          TermsAndCondition.routeName: (context)=> TermsAndCondition(),
        },
      ),
    );
  }
}
