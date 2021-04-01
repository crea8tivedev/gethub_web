import 'package:flutter/material.dart';
import 'package:get_hubweb/Modal%20API/posLogin.dart';
import 'package:get_hubweb/Service%20API/posLogin.dart';

class SignIn extends StatefulWidget {
  static const routeName = 'SignIn';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool checkedValue = true;

  var passController= TextEditingController();
  var emailController= TextEditingController();

  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    final success = SnackBar(content: Text('Signed Successfully'));
    final fail = SnackBar(content: Text('someThing went wrong'));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: deviceWidth,
          height: deviceHeight,
          padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .2),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: deviceWidth* .1,),
              Center(
                child: Text(
                  'Log in to your account',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
          SizedBox(
            height: deviceWidth* .01,),
              Text(
                'Email',
                style: TextStyle(
                    fontSize: 18,

                ),
              ),
              SizedBox(
                height: deviceWidth* .01,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      )
                  ),
                  hintText: 'Your Email',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: deviceWidth* .025,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 18,

                    ),
                  ),
                  Text(
                    'Forgot?',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceWidth* .01,
              ),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      )
                  ),
                  hintText: 'Enter Password',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: deviceWidth* .005,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: checkedValue, onChanged: (newValue){
                    setState(() {
                      checkedValue = newValue;
                    });

                  }),
                  Text('Remember Me',style: TextStyle(fontSize: 16),),
                ],
              ),
              SizedBox(
                height: deviceWidth* .05,
              ),
              InkWell(
                onTap: () async {
                  PosLogin login = await posLogin(emailController.text, passController.text);
                if(login.posLogin.statusCode == 200){
                  ScaffoldMessenger.of(context).showSnackBar(success);
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(fail);
                }
                  },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child: Text('Continue', style: TextStyle(fontSize: 18, color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
