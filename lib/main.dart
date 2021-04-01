import 'package:flutter/material.dart';
import 'package:get_hubweb/Provider/signup_provider.dart';
import 'package:provider/provider.dart';


import './Landing Page/contact.dart';
import 'Landing Page/landing_home.dart';
import 'Services/LoginPage.dart';
import 'Services/SignIn.dart';
import 'Services/SignUp.dart';


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
          LoginPage.routeName: (context)=> LoginPage(),
          SignIn.routeName: (context)=> SignIn(),
        },
      ),
    );
  }
}
