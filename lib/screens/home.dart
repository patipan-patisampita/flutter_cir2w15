import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Flutter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Flutter App",
          style: TextStyle(color:Colors.teal, fontSize: 30.0,fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Text("Add"),
        onPressed: (){
          print("Test");
        },
      ),
      drawer: Drawer(),
    );
  }
}
