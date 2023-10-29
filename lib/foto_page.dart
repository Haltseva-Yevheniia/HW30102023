
//clipoval


import 'package:flutter/material.dart';
import 'package:flutter_homework_2_30102023/fotos/city_foto.dart';
import 'package:flutter_homework_2_30102023/fotos/my_fotos.dart';
List <String> cityfotos = [
  '1.jpg',
  '2.jpg',
  '3.jpg',
  '4.jpg',
  ];

List <String> myphotos=[
  'image1.jpg',
  'image2.jpg',
  'image3.jpg',
  'image4.jpg',
  'image5.jpg',
  'image6.jpg',
  'image7.jpg',
  'image8.jpg',
  'image9.jpg',
];
class FotoPage extends StatelessWidget {
  const FotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Photos'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('City photos', style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: SizedBox(

                  height: 250,
                  width: 300,
                  child: GridView.builder(
                      itemCount: cityfotos.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
                      itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CityFoto(index)),);
                        // switch (index) {
    //                         //   case 0: Navigator.push(context, MaterialPageRoute(builder: (context)=>CityFoto1()),);
    //                         //   case 1: Navigator.push(context, MaterialPageRoute(builder: (context)=>CityFoto2()),);
                        //}


                      },
                      child: Container (
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/${cityfotos[index]}', fit: BoxFit.cover,),
                      ),
                    );
                      }),
                ),
              ),
            ),
            Text('My photos', style: TextStyle(fontSize: 20, color: Colors.white),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: SizedBox(
                  height: 250,
                  width: 300,
                  child: GridView.builder(
                      itemCount: myphotos.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFoto(index),),);
                          },
                          child: Container (
                            margin: EdgeInsets.all(5),
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/images/${myphotos[index]}', fit: BoxFit.cover,),
                          ),
                        );
                      }),
                ),
              ),
            ),

          ],
    ),
        ),
      );
  }
}
