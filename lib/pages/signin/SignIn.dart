import 'package:flutter/material.dart';
import 'package:get_hubweb/Integrate/Modal%20API/posLogin.dart';
import 'package:get_hubweb/Integrate/Service%20API/posLogin.dart';
import 'package:get_hubweb/pages/signup/SignUp1.dart';
import 'package:get_hubweb/pages/Landing Page/landing_home.dart';
import 'package:get_hubweb/pages/afterlogin.dart';

class SignIn extends StatefulWidget {
  static const routeName = 'SignIn';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  void goToSignUp1(BuildContext context){
    Navigator.pushNamed(context, SignUp1.routeName);
  }
  bool forgot = false;
  bool checkedValue = true;
  bool obs = true;
  String em_error;
  bool em_val=false;
  String pas_error;
  bool pas_val=false;
  var passController= TextEditingController();
  var emailController= TextEditingController();

  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    final success = SnackBar(content: Text('Signed Successfully'));
    final fail = SnackBar(content: Text('Invalid Credentails'));
    final fail2 = SnackBar(content: Text('User Not Found'));
    return WillPopScope(
      // ignore: missing_return
      onWillPop: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingHome()));
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(children: [
            Container(width: deviceWidth*0.32,height: deviceHeight,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://secure.storehub.com//img/createnewaccount-bg-img-step-1.jpg'),fit: BoxFit.cover)),),
            Container(width: deviceWidth,),
            Positioned(
              left: deviceWidth*0.17,
              child: Container(
                  width: deviceWidth,
                  height: deviceHeight,
                  padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .25),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: deviceWidth* .04,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: TextButton(onPressed: () {
                              goToSignUp1(context);
                              }, child: Text('Not registered? Sign up now',style: TextStyle(color:Colors.grey),)),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceWidth* .05,),
                      Center(
                        child: Text(
                          !forgot?'Log in to your account':'Recover your password',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black54
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
                                em_error = 'Sorry, that isn\'t a valid email address. Please make sure it follows the \nexample@email.com format.';

                                em_val=true;
                              });
                            }else{
                              //checkEmail(v);
                              setState(() {
                                em_val=false;
                                em_error=null;
                              });
                            }
                          }
                        },
                        decoration: InputDecoration(
                          errorText: em_val ?em_error:null,
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
                      !forgot?Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 18,

                                ),
                              ),
                              TextButton(child: Text('forgot?'),onPressed: (){
                                setState(() {
                                  forgot=!forgot;
                                });
                              }),
                            ],
                          ),
                          SizedBox(
                            height: deviceWidth* .01,
                          ),
                          TextField(
                            obscureText: obs,
                            controller: passController,
                            onChanged: (v){
                              if(v.trim().isEmpty) {
                                setState(() {
                                  pas_error = 'This field is required';
                                  pas_val=true;
                                });
                              }
                              else{
                                if(v.length<6) {
                                  setState(() {
                                    pas_error = 'Oops! Please make sure your password is at least six characters long';
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
                              suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
                                setState(() {
                                  obs=!obs;
                                });
                              }),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  )
                              ),
                              hintText: 'Enter Password',
                              errorText: pas_val ?pas_error:null,
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
                        ],
                      ):Container(),
                      SizedBox(
                        height: forgot?deviceWidth* .02:deviceWidth* .035,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () async {
                            if(!em_val && !pas_val && emailController.text.trim().isNotEmpty && passController.text.trim().isNotEmpty){
                              PosLogin login = await posLogin(emailController.text, passController.text);
                              if(login.posLogin.message == "success"){
                                ScaffoldMessenger.of(context).showSnackBar(success);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> AfterLogin()));
                              }else if(login.posLogin.message == "Invalid Password"){
                                ScaffoldMessenger.of(context).showSnackBar(fail);
                              }
                              else if(login.posLogin.message == "User Not Found"){
                                ScaffoldMessenger.of(context).showSnackBar(fail2);
                              }
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(fail);
                              print('AA');
                              em_val=true;
                              em_error = 'Looks like this email has already been registered.';
                              pas_val=true;
                              pas_error = 'This field is required';
                              setState(() {});
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .05),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange,
                            ),
                            child: Text('Continue', style: TextStyle(fontSize: 18, color: Colors.white),),
                          ),
                        ),
                      ),
                      forgot?SizedBox(height: 10,):Container(),
                      forgot?Center(
                        child: TextButton(child: Text('Back to Login',style: TextStyle(decoration: TextDecoration.underline)),onPressed: (){
                          setState(() {
                            forgot=!forgot;
                          });
                        },),
                      ):Container()
                    ],
                  )
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
