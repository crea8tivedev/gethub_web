import 'package:flutter/foundation.dart';


class SignUpProvider extends ChangeNotifier{
  var email;
  var password;
  var countryId = "aa92c1db-73dc-428b-a0a7-cd6d51d36312";
  void onChange(value){
    email = value;
    password = value;
    notifyListeners();
  }
}