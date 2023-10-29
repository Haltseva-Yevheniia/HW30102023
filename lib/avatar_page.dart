import 'package:flutter/material.dart';
import 'package:flutter_homework_2_30102023/foto_page.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Personal information'),
        centerTitle: true,
        elevation: 6,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/image1.jpg')),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Haltseva Yevheniia', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),),
              ),
              Container(
                width: 200,
                height: 1,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('About myself', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                  width: 400,

                                    color: Colors.white60,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Proffesion:\nI am a bookkeeper '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Hobbies:\nI very like to read books and to look different films ', textAlign: TextAlign.justify,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Dreams:\nI very want to buy a house on the beach nearby the mountains ', textAlign: TextAlign.justify,),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FotoPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.photo_camera),
                  label: Text('MY FOTOS'),

                ),
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(child: Text('Contacts', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Evgeniya.extremeparty@gmail.com'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 20,
                        ),
                        Text('+3909724369--'),
                      ],
                    ),
                  ),
                ],
              ),


            ]),
      ),
    );
  }
}
