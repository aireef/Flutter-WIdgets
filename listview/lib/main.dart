import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'listview',
      theme: ThemeData(
        
        primarySwatch: Colors.cyan,
      ),
      home: FirstScreen(
        
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {

  const FirstScreen({Key? key}) :super (key: key);


  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text("listview"),
      ),

//penggunaan listview hampir mirip dengan row dan column
      body: ListView(
        children: <Widget> [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),

            ),

//didalam container ada widget center yang berisi text 1

              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50),
                ),
              ),            
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),

            ),

//didalam container ada widget center yang berisi text 1

              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50),
                ),
              ),            
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),

            ),

//didalam container ada widget center yang berisi text 1

              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50),
                ),
              ),            
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),

            ),

//didalam container ada widget center yang berisi text 1

              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50),
                ),
              ),            
          ),

        ],
      ),
    );
  }
  
}


