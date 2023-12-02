import 'package:flutter/material.dart';
import 'second.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      title: 'navigation',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),

      home: FirstScreen(
        
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  
  final String message = "Hello from the first screen";
  

  Widget build (BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Center(
            child: ElevatedButton(
          child: Text("pindah screen"),
          onPressed: () {

            //menambahkan navigator push untuk berpindah screen          
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return SecondScreen();
            // }));
          },
        ),
          ),

          Center(
            child: ElevatedButton(
          child: Text("pindah screen"),
          onPressed: () {

            //mengirimkan data berupa string message          
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => SecondScreen(message)));

          },
        ),
          ),
          
          


        ],
      )
      
      
      
    );
  }
  
}
