import 'package:flutter/material.dart';

import 'Test4.dart';
import 'check_number.dart';
void _showPopupMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Test Result'),
        content: Text('Your vision is bad you should consult your Doctor'),
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
class Test3 extends StatelessWidget {
  final int Second;

  const Test3({Key? key, required this.Second}) : super(key: key);
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
                  'assets/images/e3.png',
                  height: 120,
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
                        MaterialPageRoute(builder: (context) => Test4(Second: Second,)),
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