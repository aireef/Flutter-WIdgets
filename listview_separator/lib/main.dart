import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'list view builder',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: ScrollingScreen(
        
      ),
    );
  }
}

class ScrollingScreen extends StatelessWidget {
  final List<int> numberList = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text("Listview builder"),
        
      ),


//membuat listview separator

//ListView.separator akan menampilkan daftar item yang dipisahkan dengan separator

      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(

            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),

            child: Center(

              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),

            ),
          );
        },

        separatorBuilder: (BuildContext context, int index) {
            return const Divider();
        },
        ),
        
        );
    
  }
  
}
