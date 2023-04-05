import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider__class.dart';

class DatasSHowing extends StatelessWidget {
   DatasSHowing({Key? key}) : super(key: key);

  TextEditingController datascontroller = TextEditingController();

  //List<String> dataList = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Provider.of<Providerclass>(context, listen: false)
          //     .listofdata(data: datascontroller.text);
          Provider.of<Providerclass>(context,listen: false).brightii();

          // setState(() {
          //   dataList.add(datascontroller.text);
          // });
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: datascontroller,
            decoration: InputDecoration(hintText: 'Enter text'),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Provider.of<Providerclass>(context).dataList.length,
                itemBuilder: (context, index) {
                  return Text(
                      Provider.of<Providerclass>(context).dataList[index]);
                }),
          ),
        ],
      ),
    ));
  }
}
