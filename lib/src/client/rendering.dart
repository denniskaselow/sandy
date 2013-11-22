part of client;

class PixelRenderingSystem extends EntityProcessingSystem {
  ComponentMapper<Position> posMapper;

  CanvasRenderingContext2D ctx;
  PixelRenderingSystem(this.ctx, Type type) : super(Aspect.getAspectForAllOf([type, Position]));

  void initialize() {
    posMapper = new ComponentMapper<Position>(Position, world);
  }

  void processEntity(Entity entity) {
    var pos = posMapper.get(entity);
    ctx.fillRect(pos.point.x, pos.point.y, 1, 1);
  }

}

class WaterRenderingSystem extends PixelRenderingSystem {
  WaterRenderingSystem(CanvasRenderingContext2D ctx) : super(ctx, Sand);

  void begin() {
    ctx.fillStyle = 'blue';
  }
}

class SandRenderingSystem extends PixelRenderingSystem {
  SandRenderingSystem(CanvasRenderingContext2D ctx) : super(ctx, Water);

  void begin() {
    ctx.fillStyle = 'brown';
  }
}
