import 'package:flutter/material.dart';



class SignUp extends StatefulWidget {
  static const routeName = 'SignUp';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String dropdownValue = 'Select Your Business Type';
  String dropdownValue2 = 'How many stores do you own ?';
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .2),
            height: deviceHeight,
            width: deviceWidth,
            child: ListView(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Thanks so much for signing up!',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth* .01,
                    ),
                    Center(
                      child: Text(
                        'Here at StoreHub we want to make your experience the best it can be.\nFill out the fields below to help us guide you through the right introductory screens ',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth* .025,
                    ),
                    Text(
                      ' Business Name',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth* .01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            )
                        ),
                        hintText: 'Your Business Name',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth* .01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixText: '.storehubhq.com',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            )
                        ),
                        hintText: 'Your Domain',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth* .025,
                    ),
                    Text(
                      'Contact Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth* .01,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: TextField(

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  )
                              ),
                              hintText: 'First Name',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: TextField(

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  )
                              ),
                              hintText: 'Last Name',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: deviceWidth* .01,
                    ),
                    SizedBox(
                      height: deviceWidth* .025,
                    ),
                    Row(
                      children: [
                        Text(
                          ' What does your Business do?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceWidth* .01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black)),

                            child: DropdownButton<String>(
                              hint: Text('Select your business type'),
                              value: dropdownValue,
                              isExpanded: true,
                              icon: Icon(Icons.keyboard_arrow_down_outlined),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                              ),

                              underline: Container(color: Colors.transparent,),

                              items: <String>['Select Your Business Type', 'Partnership', 'Sole Proprietor', 'Company']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: deviceWidth* .025,
                    ),
                    Row(
                      children: [
                        Text(
                          ' How many stores do you own ?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceWidth* .01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black)),

                            child: DropdownButton<String>(
                              hint: Text('How many stores do you own ?'),
                              value: dropdownValue2,
                              isExpanded: true,
                              icon: Icon(Icons.keyboard_arrow_down_outlined),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                              ),
                              underline: Container(color: Colors.transparent,),
                              items: <String>['How many stores do you own ?', '1', '2', '3','4','5']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),




              ],
            ),
          ),
        ),
    );

  }
}
