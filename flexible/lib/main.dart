import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'flexible',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Flexiblee(
        
      ),
    );
  }
}

class Flexiblee extends StatelessWidget{
  const Flexiblee({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),


//perbedaan antara flexible dan expanded adalah : 
//flexible memungkinkan child widgetnya lebih kecil dibandingkan  ukuran ruang yang tersisa
      body: SafeArea(
        child: Column(
        children: [
          Row(
            children: [
              ExpandedWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: [
              ExpandedWidget(),
              ExpandedWidget(),
            ],
          ),
          Row(
            children: [
              FlexibleWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: [
              FlexibleWidget(),
              ExpandedWidget(),
            ],
          )
        ],
      )),
    );
  }
}

class ExpandedWidget extends StatelessWidget {

  const ExpandedWidget({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context){

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),),
      ));
  }
  
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) :super(key: key);

  @override

  Widget build(BuildContext context){

    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          border: Border.all(color: Colors.white),
        ),

        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Flexible',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ));
  }
  
}
