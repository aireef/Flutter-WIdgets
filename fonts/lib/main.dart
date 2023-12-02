import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'fonts',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'Oswald',
      ),
      home: FirstScreen(
       
      ),
    );
  }
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}) :super(key: key);

  @override

  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Fonts"),
      
      ),

      body: Text(
        'Custom Font',
  style: TextStyle(
    fontFamily: 'Oswald',
    fontSize: 30,
        ),
      ),
    );
  }
}
