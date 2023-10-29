import 'package:flutter/material.dart';
import 'package:flutter_homework_2_30102023/avatar_page.dart';

void main() {
  runApp(const PersonalInfo());
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AvatarPage(),
    );
  }
}
