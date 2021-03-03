import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Hello Flutter"), backgroundColor: Colors.red,),
    body:SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column (
      children: [
        Text("Hello World", style: TextStyle(fontSize: 40, color: Colors.red),),
        SizedBox(height:10),
        Text("This is my first app", style: TextStyle(fontSize: 32, color: Colors.blue),),
        SizedBox(height:10),
        Text("I hope you like it!", style: TextStyle(fontSize: 18)),
        SizedBox(height:10),
        Row(
          children: [
            Text("First column"),
            SizedBox(width:10),
            Text("Second column")
          ],
        ),
        Image.network("http://static.asiawebdirect.com/m/kl/portals/kuala-lumpur-ws/homepage/pagePropertiesOgImage/kuala-lumpur.jpg.jpg"),
        TextField(
        decoration: InputDecoration(hintText: "Enter your name"),
        controller: nameController,
         ),
        FlatButton(onPressed: (){
          Toast.show("User enter ${nameController.text}", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
        }, child: Text("What is your name"), color:Colors.yellow),
        FlatButton.icon(onPressed: (){
          Toast.show("Toast successfully added!", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

        }, icon: Icon(Icons.add), label: Text("Another Button"), color:Colors.blue),
      ],
    ),
    )
    ); // Scaffold
  }
}
