import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('arza'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Nama',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                ),
              ),
            ),
            Text(
              'ucup guerero',
              style: TextStyle(
                backgroundColor: Color.fromARGB(
                  200,
                  100,
                  100,
                  100),
              ),
            ),

          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}