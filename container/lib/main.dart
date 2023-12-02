

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

// -- >> Menambahkan Container << --
      /* Container adalah widget yang digunakan untuk styling, membuat shape, dan layout pada widget child */

      body: Container(

// -- >> Menambahkan color untuk Container dengan decoration << --
        decoration: BoxDecoration(
          color: Colors.cyan,

// -- >> mengatur shape dari container << --

          // shape: BoxShape.circle,

// -- >> Menambahkan shadow pada container << --

         boxShadow: const[
          BoxShadow(
            color: Colors.black,
            offset: Offset(3, 6),
            blurRadius: 10,
          )],

// -- >> Menambahkan border(garis tepi) pada container << --

          border: Border.all(color: Colors.black,width: 3),

// -- >> membuat border(garis tepi) pada container menjadi tumpul << --          
          borderRadius: BorderRadius.circular(10),

          

        ),

// -- >> Menambahkan padding << --
      /* Padding merupakan jarak antara child dengan container */
      padding:  const EdgeInsets.all(10),
      // akan ada jarak antar child dengan batas border 

// -- >> Menambahkan margin << --
      /* Margin merupakan jarak antara container dengan bagian luar container */
      margin:  const EdgeInsets.all(10),

       
        child: const Text("xd",
        style:  TextStyle(fontSize: 40),),

        

      ),
    );
      
  }
}

