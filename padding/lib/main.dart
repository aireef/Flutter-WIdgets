

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
      
    );
  }
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext){

    return Scaffold(
      appBar : AppBar(
        title: const Text("ini appbar"),

      ),
      body: Padding(
  padding: const EdgeInsets.all(30),
  child: const Text('Ini Padding')
),
      
    );
      
  }
}

