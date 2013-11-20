library sandy;

import 'package:gamedev_helpers/gamedev_helpers.dart';

import 'package:sandy/client.dart';

void main() {
  new Game().start();
}

class Game extends GameBase {
  Game() : super.noAssets('sandy', 'canvas', 500, 300);


  void createEntities() {
    for (int j = 0; j < 200; j++) {
      for (int i = 0; i < 300+j; i++) {
        addEntity([new Pixel('brown'), new Position(i, 200 + j ~/ 2)]);
      }
      for (int i = 300+j; i < 500; i++) {
        addEntity([new Pixel('blue'), new Position(i, 200 + j ~/ 2)]);
      }
    }
  }

  List getSystems() {
    return [
      new PixelRenderingSystem(canvas.context2D)
    ];
  }

  void onInit() {
    // TODO implement this method
  }

  void onInitDone() {
    // TODO implement this method
  }
}


