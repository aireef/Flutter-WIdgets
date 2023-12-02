import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(),
      debugShowMaterialGrid: false,
      home: Test()
    );
  }
}

class Test extends StatefulWidget{
  const Test({Key? key}) : super(key: key);
  
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String text = "";

  @override
  Widget build(BuildContext ){
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
        title: Text("Stateless Widget",
        
        
        ),
      ),

    );

  }
}
