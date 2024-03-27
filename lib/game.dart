// import 'package:flame/components.dart';
// import 'package:flame/game.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_eyetracking/flutter_eyetracking.dart';
//
// void main() {
//   runApp(GameWidget(game: MyGame()));
// }
//
// class MyGame extends FlameGame {
//   late SpriteComponent man;
//   late SpriteComponent coin;
//   late SpriteComponent grid;
//   late EyeTrackingController eyeTrackingController;
//
//   @override
//   Future<void> onLoad() async {
//     await super.onLoad();
//     // Load the sprites from the assets folder
//     final manSprite = await loadSprite('man.png');
//     final coinSprite = await loadSprite('coin.png');
//     final gridSprite = await loadSprite('grid.png');
//
//     // Create the man component with the sprite, size, and position
//     man = SpriteComponent(
//       sprite: manSprite,
//       size: Vector2(50, 50),
//       position: Vector2(200, 200),
//     );
//
//     // Create the coin component with the sprite, size, and position
//     coin = SpriteComponent(
//       sprite: coinSprite,
//       size: Vector2(50, 50),
//       position: Vector2(300, 300),
//     );
//
//     // Create the grid component with the sprite, size, and position
//     grid = SpriteComponent(
//       sprite: gridSprite,
//       size: Vector2(400, 400),
//       position: Vector2(100, 100),
//     );
//
//     // Add the components to the game
//     add(grid);
//     add(coin);
//     add(man);
//
//     // Initialize the eye tracking controller
//     eyeTrackingController = EyeTrackingController();
//
//     // Start the eye tracking
//     eyeTrackingController.startEyeTracking();
//   }
//
//   @override
//   void update(double dt) {
//     super.update(dt);
//
//     // Get the eye gaze coordinates
//     final eyeGaze = eyeTrackingController.onEyeGaze;
//
//     // Move the man according to the eye gaze coordinates
//     if (eyeGaze != null) {
//       // Determine the direction of gaze
//       final direction = _getDirection(eyeGaze);
//
//       // Move the man according to the direction
//       _moveMan(direction, dt);
//     }
//
//     // Check if the man collides with the coin
//     if (man.toRect().overlaps(coin.toRect())) {
//       // Increase the score
//       // Add your score logic here
//       // Move the coin to a random position
//       coin.position = Vector2.random() * 400 + Vector2(100, 100);
//     }
//   }
//
//   Vector2 _getDirection(Vector2 eyeGaze) {
//     // Implement your logic to determine direction based on eye gaze
//     // For example, you can compare eyeGaze with man's current position
//     // and return a direction vector (e.g., Vector2(1, 0) for right, Vector2(-1, 0) for left)
//     // You can also calculate angle between man's current position and eyeGaze
//     // and determine direction based on the angle
//     // This function should return a direction vector
//     return Vector2(0, 0); // Placeholder, replace with your logic
//   }
//
//   void _moveMan(Vector2 direction, double dt) {
//     // Get the speed of the man
//     final speed = 100;
//
//     // Move the man according to the direction and speed
//     man.position += direction * speed * dt;
//   }
// }
