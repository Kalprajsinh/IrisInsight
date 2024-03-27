import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class InstructionPage extends StatefulWidget {
  @override
  _InstructionPageState createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  int _currentPhase = 1;
  List<String> instructions = [
    "\n\n\nAs per eye experts, after every 20 minutes, take your eyes off from mobile screens or books and relax your eyes by doing 1 min exercise to keep your eyes healthy. Our AI feature will remind you to take this break in every 20 minutes.",
    "\n\n\n\n\n Staring at the phone or computer screen can put a lot of strain on your eyes \nand cause eye fatigue",
    "\n\n\n\n\n First set a timer for 20 minutes and\n       start your work",
    "\n\n\n\n\n Every 20 minutes, take a 20-second break and     focus your eyes on something at least \n     20 feet (7m) away",
  ];

  List<String> imagePaths = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
  ];

  List<Color> backgroundColors = [
    Color(0xff2c2c2c),
    Color(0xff15284f),
    Color(0xff1f4637),
    Color(0xff272231),
  ];

  void _nextPhase() {
    if (_currentPhase < instructions.length) {
      setState(() {
        _currentPhase++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => eyecare20()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '20-20-20 Rule of Eye',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: backgroundColors[_currentPhase - 1],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePaths[_currentPhase - 1],
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20.0),
              Text(
                instructions[_currentPhase - 1],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            height: 60.0,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton.icon(
              onPressed: _nextPhase,
              icon: Icon(Icons.arrow_forward),
              label: Text(
                'Next',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent, // background color
                onPrimary: Colors.white, // text color
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                minimumSize: Size(250, 60), // custom width and height
              ),
            ),
          ),
        ),
        color: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}




class eyecare20 extends StatefulWidget {
  @override
  _eyecare20State createState() => _eyecare20State();
}

class _eyecare20State extends State<eyecare20> {
  late Timer _timer;
  late AudioPlayer _audioPlayer; // Declare AudioPlayer instance

  int _secondsRemaining = 20 * 60;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer(); // Initialize _audioPlayer here
  }

  void startTimer() {
    _isRunning = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _isRunning = false;
          _timer.cancel();
          _secondsRemaining = 20 * 60;
          // if (_audioPlayer != null) {
          //   playNotificationSound();
          // }
        }
      });
    });
  }


  void stopTimer() {
    _isRunning = false;
    _timer.cancel();
  }

  void resetTimer() {
    setState(() {
      _secondsRemaining = 20 * 60;
      _isRunning = false;
      _timer.cancel();
    });
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes < 10 ? '0$minutes' : '$minutes';
    String secondsStr = remainingSeconds < 10 ? '0$remainingSeconds' : '$remainingSeconds';
    return '$minutesStr:$secondsStr';
  }

  void playNotificationSound() async {
    // Use AudioPlayer to play the audio file asynchronously
    await _audioPlayer.play('assets/vivo_classic.mp3' as Source);
  }

  @override
  void dispose() {
    _audioPlayer.dispose(); // Dispose the AudioPlayer instance
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image(image: AssetImage("assets/images/yoga.jpg"), fit: BoxFit.cover,),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Eye Care Tips',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.black87,
          ),
          body: Container(
            color: Colors.black87,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text("Rest your eyes every 20 minutes to prevent \n                              eye fatigue",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white70),)),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    _formatTime(_secondsRemaining),
                    style: TextStyle(fontSize: 48.0, color: Colors.white),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: _isRunning ? null : startTimer,
                        child: Text('Start',style: TextStyle(color: Colors.white),),
                      ),
                      ElevatedButton(
                        onPressed: _isRunning ? stopTimer : null,
                        child: Text('Stop',style: TextStyle(color: Colors.white),),
                      ),
                      ElevatedButton(
                        onPressed: resetTimer,
                        child: Text('Reset',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 170,
                  ),
                  Center(child: Text("After Look on something at least 20 feet \n        (6 metres) away for 20 seconds ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white70),)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}