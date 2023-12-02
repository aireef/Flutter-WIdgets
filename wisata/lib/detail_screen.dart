import 'package:flutter/material.dart';
import 'package:wisata/model/tourism_place.dart';

 var informationTextStyle =  TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget{
  
  final TourismPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);
  

  @override

  Widget build(BuildContext context){
   
    
    return Scaffold(

// -- >> Menambahkan safearea untuk membarikan padding yang secara otomatis menyesuaikan perangkat yang digunakan << -- //
      body: SafeArea(

// == >> membuat agar bisa di scroll
          child: SingleChildScrollView(
          child: Column(

// -- >> Memaksimalkan lebar dari column << -- //
            crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Stack(
            children: <Widget> [

              Image.asset(place.imageAsset),

              SafeArea(child: 
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
               icon: Icon(Icons.arrow_back,
               color: Colors.white,)),),
            ],
          ),

          

          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child:  Text(
              place.name,
            textAlign: TextAlign.center, //membuat judul berada ditengah
            style: TextStyle( //memberikan style pada text
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Staatliches',
            ),),
          ),

// -- >> Membuat informasi tempat wisata
          Container(
            margin:  EdgeInsets.symmetric(vertical: 16),

            child: Row( //membuat baris icon

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Column(
                  children : <Widget>[
                Icon(Icons.calendar_today),
                SizedBox(height: 8), // memberikan jarak antara icon dengan text
                Text(place.openTime,
                style: informationTextStyle,),
                  ],
                ),
                Column(
                  children:  <Widget> [
                    Icon(Icons.access_time),
                    SizedBox(height: 8,),
                    Text("7.00 - 19.00",
                    style: informationTextStyle),
                  ],
                ),
                Column(
                  children: <Widget> [
                    Icon(Icons.monetization_on_rounded),
                    SizedBox(height: 8,),
                    Text(place.ticketPrice,
                    style: informationTextStyle),
                  ],
                ),

                
                
            ]),
          ),      

          Container(
            padding: const EdgeInsets.all(10),
            child:   Text(
              place.description,
              textAlign: TextAlign.center,
              
              style: const TextStyle(fontSize: 16,
              fontFamily: 'Oxygen'),
              
              

            ),
          ),
          Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}



