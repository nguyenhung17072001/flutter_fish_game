import 'package:fish/my_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
        runApp(
          GameWidget(
            game: MyGame(),
          ),
        );
      });
}
