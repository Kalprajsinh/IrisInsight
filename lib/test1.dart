import 'package:flutter/material.dart';
import 'Test2.dart';
import 'check_number.dart';

class InstructionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visual Acuity", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
            0xFFFFFFFF))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 3.0,right: 3.0),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Test the sharpness and clarity of your vision", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white70),),
              SizedBox(height: 70),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF545454),
                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Instructions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "1. Place your phone approx. 60cm/24 inches from your eyes.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text("2. Cover your left eye with your left hand.             .",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "3. Read the letters on the screen loud. Try not to squint.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "4. When you can no longer read more than half the letters press stop.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "5. The smallest letter you are able to read will be recorded as your acuity.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "6. First close your right Eye.                                      ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Test1(Second: 0,)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Start Test',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                  height: 200,
                  child: Image(image: AssetImage("assets/images/man.png")))
            ],
          ),
        ),
      ),
    );
  }
}

class InstructionPage2 extends StatelessWidget {
  final int Second;

  const InstructionPage2({Key? key, required this.Second}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visual Acuity", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
            0xFFFFFFFF))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 3.0,right: 3.0),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF545454),
                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Instructions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Now close your left eye",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25), // Adjust the radius as needed
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25), // Same radius as the container
                          child: Image.asset(
                            'assets/images/eye.gif',
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 40,),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Test1(Second: Second,)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Start Test',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                  height: 200,
                  child: Image(image: AssetImage("assets/images/man.png")))
            ],
          ),
        ),
      ),
    );
  }
}


void _showPopupMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Test Result'),
        content: Text('Your vision is very bad you must consult your Doctor'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
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

class Test1 extends StatelessWidget {
  final int Second;

  const Test1({Key? key, required this.Second}) : super(key: key);
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
                  'assets/images/e1.png',
                  height: 200,
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
                        MaterialPageRoute(builder: (context) => Test2(Second: Second)),
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



// import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;
// import 'dart:async';
//
// class VoiceControlDemo extends StatefulWidget {
//   const VoiceControlDemo({Key? key}) : super(key: key);
//
//   @override
//   _VoiceControlDemoState createState() => _VoiceControlDemoState();
// }
//
// class _VoiceControlDemoState extends State<VoiceControlDemo> {
//   late stt.SpeechToText _speech;
//   bool _isListening = false;
//   String _text = '';
//
//   @override
//   void initState() {
//     super.initState();
//     _speech = stt.SpeechToText();
//     _listen();
//   }
//
//   Future<void> _listen() async {
//     if (!_isListening) {
//       bool available = await _speech.initialize(
//         onStatus: (status) {
//           print('status: $status');
//         },
//         onError: (error) {
//           print('error: $error');
//         },
//       );
//
//       if (available) {
//         setState(() => _isListening = true);
//         _speech.listen(
//           onResult: (result) {
//             setState(() {
//               _text = result.recognizedWords.toLowerCase();
//               print('Result: $_text');
//               if (_text.contains('ok')) {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (context) => PageTwo()),
//                 );
//               } else if (_text.contains('no')) {
//                 check_numb(context);
//               }
//             });
//           },
//         );
//       }
//     } else {
//       setState(() => _isListening = false);
//       _speech.stop();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Voice Control Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               _isListening ? Icons.mic : Icons.mic_none,
//               size: 48.0,
//               color: Colors.blue,
//             ),
//             SizedBox(height: 20),
//             Text(
//               _isListening ? 'Listening...' : 'Not Listening',
//               style: TextStyle(fontSize: 20,color: Colors.white),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'You said: $_text',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void check_numb(BuildContext context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: (context) => CheckNumberPage()),
//     );
//   }
// }
//
// class PageTwo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page Two'),
//       ),
//       body: Center(
//         child: Image.asset('assets/images/e2.png'),
//       ),
//     );
//   }
// }
//
// class CheckNumberPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Check Number Page'),
//       ),
//       body: Center(
//         child: Image.asset('assets/images/e3.png'),
//       ),
//     );
//   }
// }