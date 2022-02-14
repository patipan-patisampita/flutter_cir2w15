import 'package:flutter/material.dart';

import 'contact.dart';
import 'first_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key); //1.Create Constructor

  @override //2.Create Build
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(

        child: ElevatedButton(
          child: Text("Go to Contact"),
          onPressed: (){
            //pop method
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));

          },
        ),
      ),
    );
  }
}
