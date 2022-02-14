import 'package:flutter/material.dart';
import 'contact.dart';
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
          onPressed: ()async{
            bool status = await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
            print(status);
            //Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen("Lung Too")));
            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen(name:"Lung Too")));
            // Navigator.pushNamed(context, SecondScreen.id,arguments: {
            //   'name':'Mark Zakerberg',
            //   'founder':'Facebook Company'
            // });
            //Navigator.pushNamed(context, '/contact');
          },
        ),
      ),
    );
  }
}