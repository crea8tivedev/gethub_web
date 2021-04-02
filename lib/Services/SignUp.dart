

import 'package:flutter/material.dart';
import 'package:get_hubweb/Modal%20API/customer_registration.dart';
import 'package:get_hubweb/Provider/signup_provider.dart';
import 'package:get_hubweb/Service%20API/registration.dart';
import 'package:get_hubweb/Services/SignIn.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  static const routeName = 'SignUp';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool bn_val=false;
  String bn = '';
  bool dn_val=false;
  String dn = '';
  bool fn_val=false;
  String fn = '';
  bool ln_val=false;
  String ln = '';
  String dropdownValue = 'Select Your Business Type';
  var dropdownValue2 = 'How many stores do you own ?';

  var businessNameController = TextEditingController();

  var domainController = TextEditingController();

  var firstNameController = TextEditingController();

  var lastNameController = TextEditingController();

  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var signUpData = Provider.of<SignUpProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    final success = SnackBar(content: Text('Sign Up Successfully'));
    final fail = SnackBar(content: Text('something went wrong'));
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth* .2),
          height: deviceHeight,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://secure.storehub.com//img/createnewaccount-bg-img-step-1.jpg'),fit: BoxFit.cover)),
          width: deviceWidth,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(top:80,left: deviceWidth* .03,right:deviceWidth* .03),
              child: ListView(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset('images/indicator.png')),
                      SizedBox(height: deviceWidth* .025,),
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
                        controller: businessNameController,
                        onChanged: (v){
                          setState(() {
                            domainController.text = v;
                            if(v.trim().isEmpty){
                              bn_val=true;
                              bn='required field';
                            }else{
                              bn_val=false;
                            }
                          });
                        },
                        decoration: InputDecoration(
                          errorText: bn_val?bn:null,
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
                        onChanged: (v){
                          setState(() {
                            if(v.trim().isEmpty){
                              dn_val=true;
                              dn='required field';
                            }else{
                              dn_val=false;
                            }
                          });
                        },
                        controller: domainController,
                        decoration: InputDecoration(
                          errorText: dn_val?dn:null,
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
                              onChanged: (v){
                                setState(() {
                                  if(v.trim().isEmpty){
                                    fn_val=true;
                                    fn='required field';
                                  }else{
                                    fn_val=false;
                                  }
                                });
                              },
                              controller: firstNameController,
                              decoration: InputDecoration(
                                errorText: fn_val?fn:null,
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
                              onChanged: (v){
                                setState(() {
                                  if(v.trim().isEmpty){
                                    ln_val=true;
                                    ln='required field';
                                  }else{
                                    ln_val=false;
                                  }
                                });
                              },
                              controller:      lastNameController,
                              decoration: InputDecoration(
                                errorText: ln_val?ln:null,
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black)
                        ),
                        child: InternationalPhoneNumberInput(
                          textFieldController: phoneController,
                          inputBorder: InputBorder.none,
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: Colors.black),
                          // initialValue: number,
                          // textFieldController: controller,
                          formatInput: false,
                          keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                          // inputBorder: OutlineInputBorder(),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
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
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;

                                  });
                                },
                                items: <String>['Select Your Business Type', 'Retail']
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
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue2 = newValue;

                                  });
                                },
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
                      SizedBox(height: deviceWidth* .025,),
                      Center(
                        child: InkWell(
                          onTap: () async {
                            if(!bn_val && !dn_val && !fn_val && !ln_val && dropdownValue!=null && dropdownValue2!=null){
                              CustomerRegistrationModal modal  = await customerRegistration(signUpData.email, signUpData.password, signUpData.countryId, businessNameController.text, domainController.text, firstNameController.text, lastNameController.text, phoneController.text, dropdownValue, int.parse(dropdownValue2));
                              if(modal.customerRegistration.statusCode == 201){
                                ScaffoldMessenger.of(context).showSnackBar(success);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                              }
                              else{
                                ScaffoldMessenger.of(context).showSnackBar(fail);
                              }
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .05 ),
                            color: Colors.orange,
                            child: Text('Let\'s Go',style: TextStyle(color: Colors.white,fontSize: 16)),
                          ),
                        ),
                      ),
                      SizedBox(height: deviceWidth* .02,),

//
// TextButton(onPressed: () async{
// CustomerRegistrationModal modal  = await customerRegistration(email, password, countryId, businessName, businessDomain, firstName, lastName, phone, businessTypeId, noOfStores)
// }, child: Text("signUp"))
                    ],
                  ),




                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}

//final