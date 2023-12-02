import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      title: 'image',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
    const FirstScreen({Key? key}) : super (key: key);


    @override

    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),


        body: Container(

           margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(8),

        child: Column(

//mengambil image dari internet          
          children: <Widget>[
            Image.network(
              'https://picsum.photos/200/300',
              width: 200,
              height: 200,

            ),
            
            Image.asset('images/android.png',
            width: 200,
            height: 200,)
            
          ],
        ),
        )
        
      );
    }  
}
