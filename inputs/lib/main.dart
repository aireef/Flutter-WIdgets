import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      title: 'inputs',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: FirstScreen()  

    );
  }
}

class FirstScreen extends StatefulWidget{
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String _name = '';
  bool lightOn = false;
  bool agree = false;
  String? language;

  @override
  
  Widget build(BuildContext){
    return Scaffold(

      appBar: AppBar(
        title: Text("inputs"),
      ),

      body: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(8),

        child: Column(

          //membuat button di kiri
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

// -- >> Menambahkan textfield << -- //

            TextField(decoration: 
            InputDecoration(
              hintText: "Write your name",
              labelText: "Name : "
            ),

// mendapatkan nilai dari textfield dengan onchanged

            onChanged: (String value){
              setState(() {
                _name = value;
              });
            },
            ),
            const SizedBox(height: 20,),


// menambahkan button            
            ElevatedButton(
              child: const Text("submit"),

 // saat button ditekan, akan menampilkan alert yang memanggil variabel nama             
              onPressed: () {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    content: Text("hello $_name"),
                  );
                });
              },
            ),
            const SizedBox(height: 20,),


//switch
            
            Switch(
              
              value: lightOn, 
              onChanged: (bool value) {
                setState(() {
                 lightOn = value; 
                });


//jika di klik, maka akan muncul pesan light on jika menyala
//jika pada posisi false akan pada kondisi tidak aktif
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light off'),
                    duration: Duration(seconds: 1), 
                    ),
                );
              }),

              Text("Radio"),

//radio button              

              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  ListTile(
                    leading: Radio<String>(
                      value: "dart",
                      groupValue: language,
                      onChanged: (String? value){

                        setState(() {
                          language = value;
                          showSnackBar();
                        });
                          
                      },
                      ),
                      title: Text("Dart"),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: "Kotlin",
                      groupValue: language,
                      onChanged: (String? value){
                        setState(() {
                          language = value;
                          showSnackBar();
                        });
                      },
                       ),
                       title: Text("Kotlin"),
                  ),

                  ListTile(
                    leading: Radio<String>(
                      groupValue: language,
                      value: "java",
                      onChanged: (String? value){
                        setState(() {
                          language = value;
                          showSnackBar();
                        });
                      },),
                      title: Text("Java"),
                  )
                  
                  
                ],
              ),

//membuat checkbox
//checkbox adalah inputan benar atau salah, akan centang jika nilai benar
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget> [
                  ListTile(
                    leading: Checkbox(
                      value: agree,
                      onChanged: (bool? value){
                        setState(() {
                          agree = value!;
                        });
                      } ),

                      title: Text("agree/disagree"),
                  )
                ],

              )
              

          ],
        ),
      ),
    );
  }
  void showSnackBar(){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("$language selected "),
    duration: Duration(seconds:  1),)
  );
}
}


