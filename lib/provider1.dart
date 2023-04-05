import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider__class.dart';

class Provider_1 extends StatelessWidget {
  const Provider_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter demo homepage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("you have published the button")),
          Text(Provider.of<Providerclass>(context).count.toString()),
          ElevatedButton(
              onPressed: () {
                Provider.of<Providerclass>(context, listen: false)
                    .incrementcount();
              },
              child: Text("+"))
        ],
      ),
    );
  }
}
