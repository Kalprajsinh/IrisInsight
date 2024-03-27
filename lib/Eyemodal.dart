import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:video_player/video_player.dart';

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


// class EyeHealth extends StatefulWidget {
//   const EyeHealth({Key? key}) : super(key: key);
//
//   @override
//   State<EyeHealth> createState() => _EyeHealthState();
// }
//
// class _EyeHealthState extends State<EyeHealth> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     initializeVideo();
//   }
//
//   void initializeVideo() async {
//     _controller = VideoPlayerController.asset('assets/video/1.mp4');
//     try {
//       await _controller.initialize();
//       setState(() {});
//     } catch (e) {
//       print('Error initializing video: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Eye Health'),
//       ),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           return Center(
//             child: _controller.value.isInitialized
//                 ? AspectRatio(
//               aspectRatio: orientation == Orientation.portrait ? 16 / 9 : _controller.value.aspectRatio,
//               child: VideoPlayer(_controller),
//             )
//                 : CircularProgressIndicator(),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => EyeH2()),
//           );
//         },
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
//
// class EyeH2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Next Page'),
//       ),
//       body: Center(
//         child: Text('This is the next page.'),
//       ),
//     );
//   }
// }





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
