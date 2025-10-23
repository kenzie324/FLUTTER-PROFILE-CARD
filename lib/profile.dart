import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'My profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    spreadRadius: 5.0,
                    blurRadius: 7.0,
                    offset: Offset(0, 3),
                  )
                ]
              ),
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 50,
                      ),
                    child: Text('NAME',
                    style:  TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),),
                  ),
                    SizedBox(
                      height: 10,
                    ),
                  Text(
                    'Muhammad Kenzie Arzachel',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
