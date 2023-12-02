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
        primarySwatch: Colors.cyan,
      ),

      home: const FirstScreen(),
      
        );
      
    
  }
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key, key}) : super (key: key);

  @override

  Widget build(BuildContext){
    return Scaffold(

// -- >> Menambahkan AppBar << --


      appBar: AppBar(
        title: Text("ini AppBar"),

// -- >> Menambahkan Icon search (actions berada pada kanan appbar)<< --        
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
// -- >> Menambahkan icon menu (leading berada pada kiri appbar)  << --
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,

          ),
          onPressed: (){},
        ),
      ),

// -- >> Menambahkan Row  << --

      body: Row(

// -- >>   << --

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,


        children: <Widget> [
          Icon(Icons.share),
          Icon(Icons.thumb_up_sharp),
          Icon(Icons.thumb_down_sharp)
        ],
      ),


      
    );
  }
}
