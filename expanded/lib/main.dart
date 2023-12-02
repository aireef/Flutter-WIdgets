import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'expanded',

    theme: ThemeData(
      primarySwatch: Colors.cyan,
    ),

      home: Rainbow(
       
      ),
    );
  }
}

class Rainbow extends StatelessWidget{
  const Rainbow({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context){

    return Scaffold(

        appBar: AppBar(
          title: Text("expanded"),
        ),

        body: Column(
          children: <Widget> [


//menambahkan expanded
//expanded dapat mengembangkan child dari row atau coclumn sesuai dengan ruang yang tersedia
            Expanded(
              child: Container(
                color: Colors.red,
              ) ),

            Expanded(child: Container(
              color: Colors.yellow,
            )),

            Expanded(child: Container(
              color: Colors.green,

            )),

            Expanded(
              flex: 2, //untuk sebagai perbandingan, jadi seperti 1:1:1:2:1
              child: Container(
              color: Colors.blue,
            )),

            Expanded(child: 
            Container(
              color: Colors.indigo,
            )),  
          ],
        ),
    );
  }
  
}
