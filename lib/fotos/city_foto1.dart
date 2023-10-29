import 'package:flutter/material.dart';

class CityFoto1 extends StatelessWidget {
  const CityFoto1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/1.jpg', fit: BoxFit.cover,),
    );
  }
}
