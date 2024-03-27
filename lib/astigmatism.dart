import 'package:flutter/material.dart';

import 'check_number.dart';

class Astigmatism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Astigmatism Test", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
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
                      "What is Astigmatism ? \n\nAstigmatism is a condition of impaired eye sight which is a result of an irregular curvature of the cornea or lens. Blurred vision is the main symptom of astigmatism.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
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
                      "1. Keep a distance of at least 1m from the screen.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                        child: Image(image: AssetImage("assets/images/astigmatismsteps.png"))),
                    Text(
                      "2. Now cover one of your eye with your hand and give the answer.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                    height: 5,
                    ),
                    Text(
                      "3. Repeat the process with another eye & match your answers with the results.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      " ",
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
                    MaterialPageRoute(builder: (context) => As1(Score: 0,)),
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
            ],
          ),
        ),
      ),
    );
  }
}


class As1 extends StatelessWidget {
  final int Score;

  const As1({Key? key, required this.Score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "  Do you see all the lines equally clear and dark? \n\n  If Yes, then click the YES button otherwise click \n  the NO button below the image.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.maxFinite,
                height: 300,
                color: Color(0xFFFFFFFF),
                child: Center(
                  child: Transform.rotate(
                    angle: 0 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/astigmatism1.gif',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 110,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => As2(Score: Score + 1), // Pass score to the next page
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Green color for YES button
                      ),
                      child: Text('YES',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => As2(Score: Score), // Pass score to the next page
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // Red color for NO button
                      ),
                      child: Text('NO',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
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


class As2 extends StatelessWidget {
  final int Score;

  const As2({Key? key, required this.Score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "  Do you see all the lines equally clear and dark? \n\n  If Yes, then click the YES button otherwise click \n  the NO button below the image.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.maxFinite,
                height: 300,
                color: Color(0xFFFFFFFF),
                child: Center(
                  child: Transform.rotate(
                    angle: 0 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/astigmatism2.gif',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 110,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => As3(Score: Score + 1), // Pass score to the next page
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Green color for YES button
                      ),
                      child: Text('YES',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => As3(Score: Score), // Pass score to the next page
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // Red color for NO button
                      ),
                      child: Text('NO',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
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


class As3 extends StatelessWidget {
  final int Score;

  const As3({Key? key, required this.Score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "  Do you see all the lines equally clear and dark? \n\n  If Yes, then click the YES button otherwise click \n  the NO button below the image.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.maxFinite,
                height: 300,
                color: Color(0xFFFFFFFF),
                child: Center(
                  child: Transform.rotate(
                    angle: 0 * 3.14159265359 / 180, // Convert degrees to radians
                    child: Image.asset(
                      'assets/images/astigmatism3.gif',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 110,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Asscore(Score: Score + 1), // Pass score to the next page
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Green color for YES button
                      ),
                      child: Text('YES',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Asscore(Score: Score), // Pass score to the next page
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // Red color for NO button
                      ),
                      child: Text('NO',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
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


class Asscore extends StatelessWidget {
  final int Score;

  const Asscore({Key? key, required this.Score}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Result',
              style: TextStyle(fontSize: 27, color: Colors.white,decoration: TextDecoration.underline,),
            ),
            SizedBox(
              height: 30,
            ),
            if(Score == 0)
              Column(
                children: [
                  Text(
                    "You may be astigmatic.",
                    style: TextStyle(color: Colors.red,fontSize: 20),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      "Visit your eye care practitioner and get your eyes thoroughly checked.",
                      style: TextStyle(color: Colors.white,fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            if(Score == 1)
              Column(
                children: [
                  Text(
                    "There may be a possibility that you might be astigmatic astigmatic.\n You give two answer wrong",
                    style: TextStyle(color: Colors.orange,fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      "Visit your eye care practitioner and get your eyes thoroughly checked.",
                      style: TextStyle(color: Colors.white,fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            if(Score == 2)
              Column(
                children: [
                  Text(
                    "There may be a possibility that you might be astigmatic astigmatic.\n You give one answer wrong",
                    style: TextStyle(color: Colors.orange,fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      "Visit your eye care practitioner and get your eyes thoroughly checked.",
                      style: TextStyle(color: Colors.white,fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            if(Score == 3)
              Column(
                children: [
                  Text(
                    "That’s great! You seem to show no signs of Astigmatism in this test.",
                    style: TextStyle(color: Colors.green,fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      " ",
                      style: TextStyle(color: Colors.white,fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 325,
            ),
            SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => check_num()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white70, // Background color
                  onPrimary: Colors.black,// Text color
                  side: const BorderSide(color: Colors.blue), // Border color
                ),
                child: const Text('Done',style: TextStyle(fontSize: 35),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}