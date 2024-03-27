import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:IrisInsight/eye20.dart';

import 'Nutrients.dart';
import 'eye20.dart';
import 'main.dart';

class eyecare extends StatefulWidget {
  @override
  _eyecareState createState() => _eyecareState();
}

class _eyecareState extends State<eyecare> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xFFFFFFFF))),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20), // Adjust the value according to your preference
              ),
            ),
          ),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 25,
                          spreadRadius: 0,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      padding: const EdgeInsets.all(12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            width: 380,
                            height: 190,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: Image.asset('assets/images/eye20.png').image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Text(" 20-20-20 Rule of Eye  ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(
                                      0xFFD2D2D2)),),
                                  Text("     ",style: TextStyle(fontSize: 9),),

                                ],
                              ),
                            )
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InstructionPage()),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 25,
                          spreadRadius: 0,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      padding: const EdgeInsets.all(12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            width: 380,
                            height: 190,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: Image.asset('assets/images/nutri.png').image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Text(" Nutrients important to eye health  ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(
                                      0xFFD2D2D2)),),
                                  Text("     ",style: TextStyle(fontSize: 9),),

                                ],
                              ),
                            )
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nutrients()),
                        );
                      },
                    ),
                  ),
                ],
              )
          ),
          bottomSheet: Positioned(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    spreadRadius: 0,
                    offset: Offset(10, 10),
                  ),
                ],
              ),
              // Adjust the width as needed
              height: 50.0, // Adjust the height as needed
              child: BottomAppBar(
                color: Color(0xFF151515),
                shape: const CircularNotchedRectangle(),
                notchMargin: 4.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.home,color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage(title: 'IrisInsight')),
                        );
                      },
                    ),
                    Container(
                      width: 10,
                    ),
                    IconButton(
                      icon: const Icon(Icons.location_on_outlined,color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eyehospital1()),
                        );
                      },
                    ),
                    Container(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(Icons.explore,color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eyehospital()),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}