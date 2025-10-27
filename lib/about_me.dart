import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'About Me',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
          backgroundColor: Colors.amberAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  // image profile
                  //Image.asset('assets/profile.png',
                  //width: 100,
                  //height: 100,
                  //),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'assets/kereta.jpeg'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                        'Muhammad Kenzie Arzachel'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                      style: TextStyle(),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      /**
                       * Android
                       */
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(
                          15,
                          ),
                          border: Border.all(
                            color: Colors.black12,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              offset: Offset(2, 3),
                              color: Colors.redAccent
                            ),
                          ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadiusDirectional.circular(
                                15,
                              ),
                            ),
                            child: Icon(Icons.android,
                            color: Colors.white,
                            size: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Android Project',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text('10 APK',
                                style: TextStyle(fontFamily: 'Poppins'),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10
                      ),
                      child: Text('Schadule'.toUpperCase(),style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        letterSpacing: 2,
                      ),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          /// belajar
                          children: <Widget>[
                            Text('Belajar', style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                            ),
                            Icon(Icons.timer, size: 30,),
                            Text(
                              '07.30 - 14.30',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        ///membaca
                        Column(
                          children: [
                            Text(
                              'membaca',
                              style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),),
                            Icon(
                              Icons.book,
                              size: 30,
                            ),
                            Text(
                              '20.00 - 21.00',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                ],
              ),
            ),
          ),
        ),
    );
  }
}