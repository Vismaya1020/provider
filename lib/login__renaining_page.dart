import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider__class.dart';

class Provider_welcome extends StatefulWidget {
  const Provider_welcome({Key? key}) : super(key: key);

  @override
  State<Provider_welcome> createState() => _Provider_welcomeState();
}

class _Provider_welcomeState extends State<Provider_welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

   Column(
     children: [
       Text(Provider.of<Providerclass>(context).email.toString()),
       Text(Provider.of<Providerclass>(context).password.toString()),
     ],
   )
    );
  }
}