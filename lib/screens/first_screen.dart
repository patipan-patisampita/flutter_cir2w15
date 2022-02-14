import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}):super(key: key); //1.Create constructor

  @override //2.build
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        // child: Text("First Screen"),
        child: ElevatedButton(
          child: Text("Go to Second Screen"),
          onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        ),
      ),
    );
  }
}