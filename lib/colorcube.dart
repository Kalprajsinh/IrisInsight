import 'package:flutter/material.dart';
import 'check_number.dart';

class ColorCube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> wrongAnswers = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Cube",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Select the different shade of color.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xDAEAECF1), fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) {
                  Color color = Color(0xFF9400d3).withOpacity(
                      index == 3 ? 0.85 : 1.0); // Adjust color intensity

                  return GestureDetector(
                    onTap: () {
                      if (index == 3) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage(wrongAnswers: wrongAnswers),
                          ),
                        );
                      } else {
                        wrongAnswers.add(
                            "Violet : you have deuteranopia, violet might appear as blue or purple, or it might be difficult to distinguish from other colors.");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage(wrongAnswers: wrongAnswers),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlindPage extends StatelessWidget {
  final List<String> wrongAnswers;

  const BlindPage({Key? key, required this.wrongAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Cube",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Select the different shade of color.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xDAEAECF1), fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) {
                  Color color = Color(0xFF4b0082).withOpacity(
                      index == 5 ? 0.85 : 1.0); // Adjust color intensity

                  return GestureDetector(
                    onTap: () {
                      if (index == 5) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage2(wrongAnswers: wrongAnswers),
                          ),
                        );
                      } else {
                        wrongAnswers.add(
                            "Indigo : Indigo is a mix of blue and violet, so if you have deuteranopia, you might perceive indigo as a shade of blue, purple, or gray.");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage2(wrongAnswers: wrongAnswers),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlindPage2 extends StatelessWidget {
  final List<String> wrongAnswers;

  const BlindPage2({Key? key, required this.wrongAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Cube",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Select the different shade of color.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xDAEAECF1), fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) {
                  Color color = Color(0xFF0000ff).withOpacity(
                      index == 7 ? 0.55 : 1.0); // Adjust color intensity

                  return GestureDetector(
                    onTap: () {
                      if (index == 7) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage3(wrongAnswers: wrongAnswers),
                          ),
                        );
                      } else {
                        wrongAnswers.add(
                            "Blue   : you have deuteranopia, you might also have difficulty perceiving shades of blue, possibly seeing them as shades of purple or gray.");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage3(wrongAnswers: wrongAnswers),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlindPage3 extends StatelessWidget {
  final List<String> wrongAnswers;

  const BlindPage3({Key? key, required this.wrongAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Cube",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Select the different shade of color.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xDAEAECF1), fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) {
                  Color color = Color(0xFF00ff00).withOpacity(
                      index == 2 ? 0.68 : 1.0); // Adjust color intensity

                  return GestureDetector(
                    onTap: () {
                      if (index == 2) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage4(wrongAnswers: wrongAnswers),
                          ),
                        );
                      } else {
                        wrongAnswers.add(
                            "Green  : you can not see shades of green, it might indicate deuteranopia, a type of color blindness where green cones in the retina are deficient. In this case, you may see green as shades of red or gray.");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage4(wrongAnswers: wrongAnswers),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlindPage4 extends StatelessWidget {
  final List<String> wrongAnswers;

  const BlindPage4({Key? key, required this.wrongAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Cube",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Select the different shade of color.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xDAEAECF1), fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) {
                  Color color = Color(0xFFffff00).withOpacity(
                      index == 1 ? 1.0 : 0.8); // Adjust color intensity

                  return GestureDetector(
                    onTap: () {
                      if (index == 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage6(wrongAnswers: wrongAnswers),
                          ),
                        );
                      } else {
                        wrongAnswers.add(
                            "Yellow : you have protanopia, you may perceive yellow as a lighter shade of green or as gray.");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage6(wrongAnswers: wrongAnswers),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlindPage6 extends StatelessWidget {
  final List<String> wrongAnswers;

  const BlindPage6({Key? key, required this.wrongAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Cube",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Select the different shade of color.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xDAEAECF1), fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) {
                  Color color = Color(0xffff7f00).withOpacity(
                      index == 4 ? 0.82 : 1.0); // Adjust color intensity

                  return GestureDetector(
                    onTap: () {
                      if (index == 4) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage7(wrongAnswers: wrongAnswers),
                          ),
                        );
                      } else {
                        wrongAnswers.add(
                            "Orange : you have protanopia, you would also struggle to perceive shades of orange, likely seeing them as yellow or gray.");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlindPage7(wrongAnswers: wrongAnswers),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlindPage7 extends StatelessWidget {
  final List<String> wrongAnswers;

  const BlindPage7({Key? key, required this.wrongAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Cube",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Select the different shade of color.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xDAEAECF1), fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) {
                  Color color = Color(0xffff0000).withOpacity(
                      index == 1 ? 0.62 : 1.0); // Adjust color intensity

                  return GestureDetector(
                    onTap: () {
                      if (index == 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScorePage(wrongAnswers: wrongAnswers),
                          ),
                        );
                      } else {
                        wrongAnswers.add(
                            "Red    : you can not see light or dark shades of red, it suggests you might have protanopia, a form of color blindness where red cones in the retina are missing or malfunctioning. In this case, you may see red as a shade of green or gray.");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScorePage(wrongAnswers: wrongAnswers),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      color: color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ScorePage extends StatelessWidget {
  final List<String> wrongAnswers;

  const ScorePage({Key? key, required this.wrongAnswers}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Result',
              style: TextStyle(fontSize: 27, color: Colors.white,decoration: TextDecoration.underline,),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: wrongAnswers.isEmpty
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your color vision is considered normal,',
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  Text(
                    'and you likely do not have color blindness.',
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                ],
              )
                  : Column(
                children: [
                  Text(
                    'You have color blindness in this type of Color',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text(
                        "───────────────────",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 27,
                          color: Color(0xFF5E5E5E),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: wrongAnswers.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            wrongAnswers[index],
                            style: TextStyle(color: Colors.white,fontSize: 17),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
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


