import 'package:flutter/material.dart';
import 'check_number.dart';

class Ctestins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C Test", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
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
                      "6. Start the test again. Cover your right eye with your right hand and continue the steps from step 3.",
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


void _showPopupMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Test Result'),
        content: Text('Your answer is wrong'),
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
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: 0 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Your answer is correct ✅',
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                    ),
                                    backgroundColor: Colors.green, // Set the background color of the Snackbar
                                    duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                                  ),
                                );

                                // Wait for 1 second before navigating to the next page
                                Future.delayed(Duration(seconds: 1), () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => Test2()),
                                  ); // Navigate to the next page
                                });

                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: -135 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      height: 250,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Your answer is correct ✅',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                ),
                                backgroundColor: Colors.green, // Set the background color of the Snackbar
                                duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                              ),
                            );

                            // Wait for 1 second before navigating to the next page
                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Test3()),
                              ); // Navigate to the next page
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Test3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: 30 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      height: 200,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Your answer is correct ✅',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                ),
                                backgroundColor: Colors.green, // Set the background color of the Snackbar
                                duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                              ),
                            );

                            // Wait for 1 second before navigating to the next page
                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Test4()),
                              ); // Navigate to the next page
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Test4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: 135 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      height: 120,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Your answer is correct ✅',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                ),
                                backgroundColor: Colors.green, // Set the background color of the Snackbar
                                duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                              ),
                            );

                            // Wait for 1 second before navigating to the next page
                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Test5()),
                              ); // Navigate to the next page
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Test5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: -45 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      height: 50,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Your answer is correct ✅',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                ),
                                backgroundColor: Colors.green, // Set the background color of the Snackbar
                                duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                              ),
                            );

                            // Wait for 1 second before navigating to the next page
                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Test6()),
                              ); // Navigate to the next page
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Test6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: -90 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      height: 30,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                                _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Your answer is correct ✅',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                ),
                                backgroundColor: Colors.green, // Set the background color of the Snackbar
                                duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                              ),
                            );

                            // Wait for 1 second before navigating to the next page
                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Test7()),
                              ); // Navigate to the next page
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Test7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: 135 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      height: 20,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Your answer is correct ✅',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                ),
                                backgroundColor: Colors.green, // Set the background color of the Snackbar
                                duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                              ),
                            );

                            // Wait for 1 second before navigating to the next page
                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Test8()),
                              ); // Navigate to the next page
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Test8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Select missing side of letter C",
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
                color: Color(0xFF000001),
                child: Center(
                  child: Transform.rotate(
                    angle: -45 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/cimg.png',
                      height: 9,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Your answer is correct ✅',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                ),
                                backgroundColor: Colors.green, // Set the background color of the Snackbar
                                duration: Duration(seconds: 1), // Set the duration for which Snackbar is visible
                              ),
                            );

                            // Wait for 1 second before navigating to the next page
                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => check_num()),
                              ); // Navigate to the next page
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇖', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text(
                                '⇑',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇗', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇐', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                      SizedBox(width: 120),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Center(child: Text('⇒', style: TextStyle(fontSize: 50),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇙', style: TextStyle(fontSize: 50),),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _showPopupMessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                              ),
                              child: Text('⇓', style: TextStyle(fontSize: 50),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 80,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                                _showPopupMessage(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                          ),
                          child: Text('⇘', style: TextStyle(fontSize: 50),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}