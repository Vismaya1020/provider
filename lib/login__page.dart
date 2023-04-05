import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider__class.dart';

import 'login__renaining_page.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailcontroller,
            decoration: InputDecoration(hintText: "email"),
          ),
          TextFormField(
            controller: passcontroller,
            decoration: InputDecoration(hintText: "password"),
          ),
          ElevatedButton(onPressed: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Provider_welcome(),));
            Provider.of<Providerclass>(context,listen: false).login(mail: emailcontroller.text,passwords: passcontroller.text);
          }, child: Text("click")),
        ],
      ) ,
    );
  }
}
