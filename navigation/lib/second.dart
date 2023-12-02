import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  final String message;
  const SecondScreen(this.message, {Key? key}) :super(key: key);
  


  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),

      body: Center(
          child: Column(

            mainAxisAlignment:MainAxisAlignment.center,

            children: <Widget>[

              Text(message),
              OutlinedButton(onPressed: (){
          Navigator.pop(context);//digunakan untuk kembali ke screen sebelumnya
        },
         child: Text("kembali") ),

            ],
             

          ),
       
      ),
    );
  } 


  
}