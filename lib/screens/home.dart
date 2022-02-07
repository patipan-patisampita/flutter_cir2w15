import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Flutter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset("assets/images/bird.png",height: 250),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Text("Add"),
        onPressed: () {
          print("Test");
        },
      ),
      drawer: Drawer(),
    );
  }
}
