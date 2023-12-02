import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "responsive",
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: HomePage(
        
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context){

    Size screensize =  MediaQuery.of(context).size;// mediaquery adalah kelas yang dapat digunakan untuk mendapat ukuran dan orientasi
    // layar

    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget> [
          Text(
            'screen width ${screensize.width.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.white,
            fontSize: 18,),
            textAlign: TextAlign.center,
          ),
          Text(
            "Orientation: $orientation",
            style: TextStyle(color: Colors.white,
            fontSize: 18),
            textAlign: TextAlign.center,
          )
        ],
      ),
      

    );
  }
  
}
