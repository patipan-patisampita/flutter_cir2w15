import 'package:flutter/material.dart';
import 'screens/contact.dart';
import 'screens/home.dart';
import 'screens/statefull.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key); //create constructor

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.indigo),
      title: "Flutter App",
      //home: FirstScreen(),
      initialRoute: '/firstScreen',
      routes: {
        '/':(context) => HomeScreen(),
        '/firstScreen':(context) => FirstScreen(),
        //SecondScreen.id:(context) => SecondScreen(),
        //'/contact':(context) => Contact(),
        Contact.id:(context) => Contact(),
        //'/home':(context) => HomeScreen(),
        SecondScreen.id:(context) => SecondScreen(),
       HomeScreen.id:(context) => HomeScreen(),
      },
    );
  }
}
