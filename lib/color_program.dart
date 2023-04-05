import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider__class.dart';

class ColorProgram extends StatefulWidget {
  const ColorProgram({Key? key}) : super(key: key);

  @override
  State<ColorProgram> createState() => _ColorProgramState();
}

class _ColorProgramState extends State<ColorProgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Providerclass>(context, listen: false).colorchanging();
          // setState(() {
          //   if(count==1){
          //     clr1=Colors.red;
          //   }
          // });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Provider.of<Providerclass>(context).clr,
            ),
          ),
        ],
      ),
    );
  }
}
