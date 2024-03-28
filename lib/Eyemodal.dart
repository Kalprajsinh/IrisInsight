import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:video_player/video_player.dart';
import 'dart:math';
import 'Nutrients.dart';
import 'main.dart';

class Eyemodal_ extends StatefulWidget {
  @override
  Eyemodal_State createState() => Eyemodal_State();
}

class Eyemodal_State extends State<Eyemodal_> {
  InAppWebViewController? inAppWebViewController;
  double _progress = 0.0;

  late StreamController<String> _streamController;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController.broadcast();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IrisInsight",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: Column(
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
                        image: Image.asset('assets/images/game.png').image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(" Eye exercises game  ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(
                              0xFFD2D2D2)),),
                          Text("     ",style: TextStyle(fontSize: 9),),

                        ],
                      ),
                    )
                ),
              ),
              onPressed: () {
                _launchURL();
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
                        image: Image.asset('assets/images/eyeexa.png').image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(" Red dot  ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(
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
                  MaterialPageRoute(builder: (context) => Ctestins()),
                );
              },
            ),
          ),
        ],
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
    );
  }

  void _launchURL() async {
    const url = 'https://6602f8c4ac2d5f5f0823931d--startling-lamington-67474b.netlify.app/';
    try {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } catch (e) {
      print('Error launching URL: $e');
    }
  }


}


class Ctestins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eye Exercise", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white70)),
              ),
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
                      "1. Keep your eyes on the moving red dot.            .",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text("2. Focus your eyes on the red dot as it moves around the screen.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text("3. Click 'Next Level' to progress through different challenges.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("=> Some advantages or benefits of Red dot Eye Exercise",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("- Tracking the dot's movement exercises the muscles responsible for eye movement, which can help prevent eye fatigue and strain.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text("- can serve as a form of relaxation and stress relief, especially when practiced in a calm environment.",
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
                    MaterialPageRoute(builder: (context) => EyeExerciseGame()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Start',
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

class EyeExerciseGame extends StatefulWidget {
  @override
  _EyeExerciseGameState createState() => _EyeExerciseGameState();
}

class _EyeExerciseGameState extends State<EyeExerciseGame> {
  late Timer _timer;
  late Offset _position;
  late int _level;

  @override
  void initState() {
    super.initState();
    _level = 1;
    _position = Offset(0, 0);
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 16), (timer) {
      setState(() {
        _updatePosition();
      });
    });
  }

  void _updatePosition() {
      switch (_level) {
        case 1:
          _position = test1();
          break;
        case 2:
          _position = test2();
          break;
        case 3:
          _position = test3();
          break;
        case 4:
          _position = test4();
          break;
        case 5:
          _position = test5();
          break;
      }
  }


  Offset test1() {
    final double radius = min(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height) /
        2;
    final double x = MediaQuery.of(context).size.width / 2 +
        radius * cos(DateTime.now().millisecondsSinceEpoch / 500);
    final double y = MediaQuery.of(context).size.height / 3 +
        radius * sin(DateTime.now().millisecondsSinceEpoch / 2000);
    return Offset(x, y);
  }

  Offset test2() {
    double x = MediaQuery.of(context).size.width / 2 +
        100 * cos(DateTime.now().millisecondsSinceEpoch / 800);
    double y = MediaQuery.of(context).size.height / 3 +
        300 * sin(DateTime.now().millisecondsSinceEpoch / 400);
    x = MediaQuery.of(context).size.width / 2 +
        100 * sin(DateTime.now().millisecondsSinceEpoch / 200);
    x = MediaQuery.of(context).size.width / 2 +
        100 * sin(DateTime.now().millisecondsSinceEpoch / 300);
    return Offset(x, y);
  }

  Offset test5() {
    double radius = min(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height) /
        2;
    double x = MediaQuery.of(context).size.width / 2 +
        radius * cos(DateTime.now().millisecondsSinceEpoch / 400);
    double y = MediaQuery.of(context).size.height / 3 +
        radius * sin(DateTime.now().millisecondsSinceEpoch / 600);
    return Offset(x, y);
  }

  Offset test4() {
    double x = MediaQuery.of(context).size.width / 2 +
        100 * cos(DateTime.now().millisecondsSinceEpoch / 800);
    double y = MediaQuery.of(context).size.height / 3 +
        300 * sin(DateTime.now().millisecondsSinceEpoch / 700);
    x = MediaQuery.of(context).size.width / 2 +
        100 * sin(DateTime.now().millisecondsSinceEpoch / 200);
    x = MediaQuery.of(context).size.width / 2 + 150 * sin(DateTime.now().millisecondsSinceEpoch / 300);
    return Offset(x, y);
  }
  Offset test3() {
    double x = MediaQuery.of(context).size.width / 4 +
        100;
    double y = MediaQuery.of(context).size.height / 2.6 +
        300 * cos(DateTime.now().millisecondsSinceEpoch / 500);
    return Offset(x, y);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IrisInsight',
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
            Expanded(
              child: CustomPaint(
                painter: DotPainter(_position),
                size: Size(double.infinity, double.infinity),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                    _level = (_level % 5) + 1;
                });
              },
              child: Text('Next Level'),
            ),
          ],
        ),
      ),
    );
  }
}

class DotPainter extends CustomPainter {
  final Offset position;

  DotPainter(this.position);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    canvas.drawCircle(position, 10.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}






// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
//
// class Eyemodal_ extends StatefulWidget {
//   @override
//   Eyemodal_State createState() => Eyemodal_State();
// }
//
// class Eyemodal_State extends State<Eyemodal_> {
//   InAppWebViewController? inAppWebViewController;
//   double _progress = 0.0;
//
//   late StreamController<String> _streamController;
//   late InAppWebViewController _inAppWebViewController;
//
//   @override
//   void initState() {
//     super.initState();
//     _streamController = StreamController.broadcast();
//   }
//
//   @override
//   void dispose() {
//     _streamController.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     String htmlContent = """
//       <!DOCTYPE html>
//       <html lang="en">
//       <head>
//       <meta charset="UTF-8">
//       <meta name="viewport" content="width=device-width, initial-scale=1.0">
//       <title>IrisInsight Eye game</title>
//       <style>
//           body {
//               font-family: Arial, sans-serif;
//               display: flex;
//               flex-direction: column;
//               align-items: center;
//               justify-content: center;
//               height: 100vh;
//               margin: 0;
//           }
//           #canvas {
//               border: 2px solid #333;
//               border-radius: 5px;
//               margin-bottom: 20px;
//               width: 100%; /* Adjust canvas width */
//               max-width: 600px; /* Max width for larger screens */
//           }
//           button {
//               padding: 10px 20px;
//               margin: 10px;
//               font-size: 18px;
//               background-color: #007bff;
//               color: #fff;
//               border: none;
//               border-radius: 5px;
//               cursor: pointer;
//           }
//           #label-container {
//               display: flex;
//               justify-content: center;
//               margin-top: 20px;
//               font-size: 18px;
//           }
//       </style>
//       </head>
//       <body>
//       <div style="display: flex;">
//           <button type="button" onclick="startGame()">Start Game</button>
//           <button type="button" onclick="stopGame()">Stop Game</button>
//       </div>
//
//       <div><canvas id="canvas"></canvas></div>
//       <div id="label-container"></div>
//       <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
//       <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
//       <script type="text/javascript">
//           const URL = "https://teachablemachine.withgoogle.com/models/Z_6ZA5rQm/";
//           let model, webcam, ctx, labelContainer, maxPredictions;
//           let airplane, airplaneX, airplaneSpeed, stones, gameover;
//
//           async function startGame() {
//               const modelURL = URL + "model.json";
//               const metadataURL = URL + "metadata.json";
//               model = await tmPose.load(modelURL, metadataURL);
//               maxPredictions = model.getTotalClasses();
//
//               const size = 300; // Increase canvas size to 300x300
//               const flip = true;
//               webcam = new tmPose.Webcam(size, size, flip);
//               await webcam.setup();
//               await webcam.play();
//               window.requestAnimationFrame(loop);
//
//               const canvas = document.getElementById("canvas");
//               canvas.width = size;
//               canvas.height = size;
//               ctx = canvas.getContext("2d");
//               labelContainer = document.getElementById("label-container");
//
//               airplane = new Image();
//               airplane.src = 'airplane.png'; // path to your airplane image
//               airplaneX = size / 2 - 25; // starting position
//               airplaneSpeed = 5; // speed of airplane movement
//
//               stones = [];
//               gameover = false;
//               createStones();
//           }
//
//           function stopGame() {
//               if (webcam) {
//                   webcam.stop();
//               }
//           }
//
//           async function loop(timestamp) {
//               if (!gameover) {
//                   webcam.update();
//                   await predict();
//                   moveAirplane();
//                   draw();
//                   detectCollision();
//               }
//               window.requestAnimationFrame(loop);
//           }
//
//           async function predict() {
//               const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
//               const prediction = await model.predict(posenetOutput);
//
//               const classPrediction = prediction[0].probability.toFixed(2);
//
//               if (parseFloat(classPrediction) > 0.5) {
//                   // Move right
//                   airplaneX += airplaneSpeed;
//                   labelContainer.innerHTML = "Right";
//                   labelContainer.style.color = "green";
//               } else {
//                   // Move left
//                   airplaneX -= airplaneSpeed;
//                   labelContainer.innerHTML = "Left";
//                   labelContainer.style.color = "red";
//               }
//
//               // Keep airplane within canvas bounds
//               airplaneX = Math.max(0, Math.min(300 - 50, airplaneX)); // Adjust bounds for larger canvas
//           }
//
//           function moveAirplane() {
//               // Move airplane based on prediction
//           }
//
//           function createStones() {
//               setInterval(() => {
//                   stones.push({ x: Math.random() * 250, y: 0 }); // Adjust stone position for larger canvas
//               }, 3000);
//           }
//
//           function draw() {
//               ctx.clearRect(0, 0, 300, 300); // Adjust canvas dimensions
//               ctx.drawImage(webcam.canvas, 0, 0); // Draw webcam view
//               if (webcam.canvas) {
//                   ctx.drawImage(airplane, airplaneX, 200, 50, 50); // Draw airplane
//                   ctx.fillStyle = "gray";
//                   stones.forEach((stone) => {
//                       ctx.fillRect(stone.x, stone.y++, 12, 12); // Draw stones falling
//                   });
//               }
//           }
//
//           function detectCollision() {
//               stones.forEach((stone) => {
//                   if (
//                       stone.x < airplaneX + 50 &&
//                       stone.x + 10 > airplaneX &&
//                       300 < stone.y + 10 // Adjust collision detection for larger canvas
//                   ) {
//                       gameover = true;
//                       alert("Game Over!");
//                   }
//               });
//           }
//
//           // Call this function from Flutter to start the game
//           function startGameFromFlutter() {
//               startGame();
//           }
//       </script>
//       </body>
//       </html>
//     """;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "IrisInsight",
//           style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(20), // Adjust the value according to your preference
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             LinearProgressIndicator(value: _progress),
//             Container(
//               width: double.maxFinite,
//               height: 720,
//               child: InAppWebView(
//                 initialData: InAppWebViewInitialData(data: htmlContent),
//                 initialOptions: InAppWebViewGroupOptions(
//                   crossPlatform: InAppWebViewOptions(
//                     javaScriptEnabled: true, // Enable JavaScript execution
//                   ),
//                 ),
//                 onWebViewCreated: (InAppWebViewController controller) {
//                   _inAppWebViewController = controller;
//                 },
//                 onProgressChanged: (InAppWebViewController controller, int progress) {
//                   setState(() {
//                     _progress = progress / 100;
//                   });
//                 },
//               ),
//             ),
//             const SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }
