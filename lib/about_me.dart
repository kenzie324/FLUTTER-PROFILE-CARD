import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  final List<String> ImageList = const <String>[
    'https://cdn-icons-png.flaticon.com/512/888/888879.png', 
    'https://cdn-icons-png.flaticon.com/512/5968/5968705.png', 
    'https://cdn-icons-png.flaticon.com/512/732/732212.png', 
    'https://cdn-icons-png.flaticon.com/512/5968/5968292.png', 
    'https://cdn-icons-png.flaticon.com/512/5968/5968381.png', 
    'https://cdn-icons-png.flaticon.com/512/2111/2111463.png', 
    'https://cdn-icons-png.flaticon.com/512/733/733609.png', 
    'https://cdn-icons-png.flaticon.com/512/2111/2111421.png', 
    'https://cdn-icons-png.flaticon.com/512/2504/2504911.png', 
    'https://cdn-icons-png.flaticon.com/512/4202/4202839.png', 
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me', style: TextStyle(fontWeight: FontWeight.bold)),
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
                    backgroundImage: NetworkImage('assets/kereta.jpeg'),
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
                SizedBox(height: 10),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                  style: TextStyle(),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black12, width: 2),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                offset: Offset(2, 3),
                                color: const Color.fromARGB(255, 103, 103, 103),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(
                                  Icons.gamepad,
                                  size: 75,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Game Project',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      '10 Games',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          /**
                           * Android
                           */
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black12, width: 2),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                offset: Offset(2, 3),
                                color: const Color.fromARGB(255, 103, 103, 103),
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
                                  borderRadius:
                                      BorderRadiusDirectional.circular(15),
                                ),
                                child: Icon(
                                  Icons.android,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Android Project',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '10 APK',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Schadule'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              /// belajar
                              children: <Widget>[
                                Text(
                                  'Belajar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Icon(Icons.timer, size: 30),
                                Text(
                                  '07.30 - 14.30',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),

                          ///membaca
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'membaca',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Icon(Icons.book, size: 30),
                                Text(
                                  '20.00 - 21.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // tidur
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Tidur',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Icon(Icons.bed, size: 30),
                                Text(
                                  '21.30 - 03.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                  const SizedBox(height: 25),

                /// Section Badges
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'APP',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                
                SizedBox(
                  
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ImageList.length,
                    itemBuilder: (context, index) {
                      final badgeUrl = ImageList[index];
                      return Padding(
                        
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor:  Colors.white,
                          backgroundImage: NetworkImage(badgeUrl),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 110,
                  
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ImageList.length,
                    itemBuilder: (BuildContext context,int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(backgroundImage: NetworkImage(
                          '${ImageList[index]}',
                          ),),
                      );
                    }),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
