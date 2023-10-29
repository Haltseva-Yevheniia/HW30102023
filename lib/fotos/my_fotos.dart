import 'package:flutter/material.dart';

class MyFoto extends StatelessWidget {
  int index=0;
  MyFoto(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/image${index+1}.jpg',
        fit: BoxFit.cover,)),
    );
  }
}