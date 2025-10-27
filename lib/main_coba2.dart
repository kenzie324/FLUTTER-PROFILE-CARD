import 'package:flutter/material.dart';



void main() => runApp(const MaterialApp(home: DetailScreen()));


class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}