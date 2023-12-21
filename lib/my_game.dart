import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';




class MyGame extends FlameGame with TapCallbacks {
  SpriteComponent fish = SpriteComponent();
  SpriteComponent background = SpriteComponent();


  @override
  FutureOr<void> onLoad() async {
    
    super.onLoad();
    final screenWidth = size[0];
    final screenHeight = size[1];
    

    background
      ..sprite = await loadSprite('background.jpg')
      ..size = size;
    add(background);

    fish
      ..sprite = await loadSprite('blue_fish.png')
      ..size = Vector2(300, 300);

    add(fish);

    
  }
}

