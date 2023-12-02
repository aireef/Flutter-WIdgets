

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

// -- >>menambahkan action widget
         actions: <Widget>[ 
          IconButton(
            icon: const Icon(//menambahkan icon search pada kanan appbar
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],

// -- >> menambahkan menu button di kiri AppBar
        leading: IconButton( 
/* -- >> Leading hanya menampung satu widget saja, leading akan berisi tombol untuk kembali ke halaman sebelumnya(jika ada), 
         dan tombol untuk menu drawer(Jika kita mengatur untuk drawer pada scaffold tersebut)*/
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {} ),
        
      ),

// -- >> menambahkan bagian body
      body: const Center(
        child: Text("ini Body"),
      ),
      

// -- >> menambahkan Floating action button 
/*  --- >> Floating action button merupakan bagian dari scaffold yang digunakan untuk menampilkan tombol aksi yang posisinya 
           floating(melayang dan posisinya tetap). */   
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),

    );
      
  }
}

