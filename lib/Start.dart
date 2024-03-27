import 'package:flutter/material.dart';
import 'main.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            SizedBox(
              height: 500,
              child: Image.asset('assets/images/sho1.gif'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: '𝑬𝒚𝒆 𝑯𝒆𝒂𝒍𝒕𝒉')),
                );
              },
              child: Text('Go to Home'),
            ),
          ],

        ),
      ),
    );
  }
}
