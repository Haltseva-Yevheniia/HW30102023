import 'package:flutter/material.dart';

class CityFoto2 extends StatelessWidget {
  const CityFoto2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/2.jpg', fit: BoxFit.cover,),
    );
  }
}
