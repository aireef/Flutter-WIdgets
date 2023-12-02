import 'package:flutter/material.dart';
import 'package:wisata/mainscreen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "wisata bangdung",

       theme: ThemeData(),
       home: MainScreen(),
    );
  }
}


