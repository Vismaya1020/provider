import 'package:flutter/material.dart';

class Providerclass extends ChangeNotifier {
  int count = 0;

  void incrementcount() {
    count++;
    notifyListeners();
  }

  List<String> dataList = [];

  void listofdata({required String data}) {
    dataList.add(data);
    notifyListeners();
  }

  Brightness bright = Brightness.light;

  void brightii() {
    bright = Brightness.dark;
    notifyListeners();
  }

  String?email;
  String?password;

  void login({required String mail, required String passwords}) {
    email = mail;
    password = passwords;


    notifyListeners();
  }

  // int count1 = 0;
  // Color clr1 = Colors.white;
  // Color clr2 = Colors.red;
  // Color clr3 = Colors.red;


//   void colorchanging({required String clr1,required String clr2}){
// count++;
//
//   if(count==1){
//      clr1=Colors.green.toString();
//
//   }
// if(count==2){
//   clr1=Colors.red.toString();
//
// }
//     notifyListeners();
// }
// }
Color clr=Colors.red;
  colorchanging(){
    count++;
    if(count==1){
      clr=Colors.green;
    }
    else{
      count=0;
      clr=Colors.red;
    }
    notifyListeners();
  }

}
