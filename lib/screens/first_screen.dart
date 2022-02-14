import 'package:flutter/material.dart';
import 'contact.dart';
import 'home.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key); //1.Create constructor

  @override //2.build
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Android"),
              accountEmail: Text("android@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: Text("First Screen"),
              leading: Icon(Icons.send),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Second Screen"),
              leading: Icon(Icons.account_balance),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            ),
            ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.call),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        // child: Text("First Screen"),
        child: ElevatedButton(
          child: Text("Go to Second Screen"),
          onPressed: () async {
            bool status = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
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
