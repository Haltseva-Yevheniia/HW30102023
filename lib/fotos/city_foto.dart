import 'package:flutter/material.dart';

class CityFoto extends StatelessWidget {
  int index=0;
  CityFoto(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/${index+1}.jpg', fit: BoxFit.cover,)),
    );
  }
}
