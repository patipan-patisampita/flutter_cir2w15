import 'package:flutter/material.dart';

import 'contact.dart';
import 'first_screen.dart';

class SecondScreen extends StatelessWidget {
  //String name;
  static String id = "/second-screen";
  // SecondScreen(this.name);
  //SecondScreen({required this.name});//
  //const SecondScreen({Key? key}) : super(key: key); //1.Create Constructor

  @override //2.Create Build
  Widget build(BuildContext context) {

    // if(ModalRoute.of(context)!.settings.arguments != null){
    //     final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    //     print(arguments['name']);
    //     print(arguments['founder']);
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go Back with value"),
          onPressed: () {
            Navigator.pop(context,true);
            //pop method
            //Navigator.pop(context);
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => Contact()));
            //print(name);
          },
        ),
      ),
    );
  }
}
