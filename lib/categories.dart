import 'package:flutter/material.dart';

import 'main.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _check_numState();
}

class _check_numState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF112354))),
            centerTitle: true,
            backgroundColor: Color(0xFF386CE3),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 380,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF6C8FDC),
                          // side: const BorderSide(color: Color(0xFF386CE2), width: 3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "1. asdfghjkl,mn",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/eye1.png',),
                            ),

                          ],
                        ),
                      ),
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
                color: Color(0xFF386CE3),
                shape: const CircularNotchedRectangle(),
                notchMargin: 4.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: const Icon(Icons.home), onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MaterialApp(
                          // title of the application
                          title: '𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭',
                          debugShowCheckedModeBanner: false,  //for remove line
                          // theme of the widget
                          theme: ThemeData(
                              appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent)

                          ),
                          // Inner UI of the application
                          home: const MyHomePage(title: '𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭'),
                        )),
                      );
                    }),
                    IconButton(
                      icon: const Icon(Icons.explore),
                      onPressed: () {

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.category),
                      onPressed: () {

                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {

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
