library sandy;

import 'package:gamedev_helpers/gamedev_helpers.dart';

import 'package:sandy/client.dart';

void main() {
  new Game().start();
}

class Game extends GameBase {
  Game() : super.noAssets('sandy', 'canvas', 500, 300);


  void createEntities() {
    for (int j = 0; j < 100; j+=1) {
      for (int i = 0; i < 300+j*2; i+=1) {
        addEntity([new Sand(), new Position(i, 200 + j)]);
      }
      for (int i = 300+j*2; i < 500; i+=1) {
        addEntity([new Water(), new Position(i, 200 + j)]);
      }
    }
  }

  List getSystems() {
    var ctx = canvas.context2D;
    return [
      new CanvasCleaningSystem(canvas),
      new SandRenderingSystem(ctx),
      new WaterRenderingSystem(ctx),
      new FpsRenderingSystem(ctx)
    ];
  }

  void onInit() {
    // TODO implement this method
  }

  void onInitDone() {
    // TODO implement this method
  }
}


