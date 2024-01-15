import 'package:flutter/material.dart';
import 'package:navigasi/screen1.dart';

void main() {
  runApp(const untuknavigasi());
}

class untuknavigasi extends StatelessWidget {
  const untuknavigasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen1(),
    );
  }
}