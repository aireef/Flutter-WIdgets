import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "button",
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
 
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  String? language;


  @override

  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("Buttons"),
      ),

    

      body: Column(
      
        children: [
          
// -- >> Menambahkan elevated button <<--//  

        ElevatedButton(
        child: Text("Tombol"),
        onPressed: () {},),

// -- >> Menambahkan text button <<--//          

        TextButton(
          child: Text("tombol"),
          onPressed: (){},
        ),

// -- >> Menambahkan outlined button <<--// 

        OutlinedButton(
          child: Text("tombol"),
          onPressed: (){},),

// -- >> Menambahkan icon button <<--//       

        IconButton(onPressed: (){},
         icon: Icon(Icons.money)),

// -- >> Menambahkan icon button <<--//  
        DropdownButton <String> (
          items: const <DropdownMenuItem<String>> [
            DropdownMenuItem <String>(
              value: 'dart',
              child: Text("dart"),
            ),

            DropdownMenuItem <String>(
              value: 'kotlin',
              child: Text("kotlin"),
            ),

            DropdownMenuItem <String>(
              value: 'java',
              child: Text("java"),
            ),


          ],

          value: language,

          hint: const Text("Select Language"),
          onChanged: (String? value){
            setState(() {
              language = value;
            });
          },
        ) 
                       

      ],)
      ,
    );
  }
}
