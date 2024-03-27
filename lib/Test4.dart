import 'package:flutter/material.dart';

import 'check_number.dart';
import 'test1.dart';
void _showPopupMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Test Result'),
        content: Text('Your vision is normal'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => check_num()),
              );
            },
            child: Text(
              'Close',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.black,
              ),
            ),
          ),
        ],
      );
    },
  );
}

void _showPopupMessage2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Test Result'),
        content: Text('Your vision is Good'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => check_num()),
              );
            },
            child: Text(
              'Close',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.black,
              ),
            ),
          ),
        ],
      );
    },
  );
}
class Test4 extends StatelessWidget {
  final int Second;

  const Test4({Key? key, required this.Second}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "If you not see the text you cant stop button ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              color: Color(0xFFFDFDFE),
              child: Center(// Convert degrees to radians
                child: Image.asset(
                  'assets/images/e5.png',
                  height: 80,
                  alignment: Alignment.center,
                ),
              ),

            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _showPopupMessage(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Stop', style: TextStyle(fontSize: 27),),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Test5(Second: Second)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Text('Next', style: TextStyle(fontSize: 27),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

class Test5 extends StatelessWidget {
  final int Second;

  const Test5({Key? key, required this.Second}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "If you not see the text you cant stop button ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              color: Color(0xFFFDFDFE),
              child: Center(// Convert degrees to radians
                child: Image.asset(
                  'assets/images/e4.png',
                  alignment: Alignment.center,
                  height: 60,
                ),
              ),

            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _showPopupMessage2(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Stop', style: TextStyle(fontSize: 27),),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      if(Second == 1)
                      {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => check_num()),
                        );
                      }
                      else
                      {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => InstructionPage2(Second: 1)),
                        );
                      }

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Text('Next', style: TextStyle(fontSize: 27),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}