part of client;

class PixelRenderingSystem extends EntityProcessingSystem {
  ComponentMapper<Position> posMapper;
  ComponentMapper<Pixel> pixelMapper;

  CanvasRenderingContext2D ctx;
  PixelRenderingSystem(this.ctx) : super(Aspect.getAspectForAllOf([Pixel, Position]));

  void initialize() {
    posMapper = new ComponentMapper<Position>(Position, world);
    pixelMapper = new ComponentMapper<Pixel>(Pixel, world);
  }

  void processEntity(Entity entity) {
    var pos = posMapper.get(entity);
    var pixel = pixelMapper.get(entity);
    ctx.fillStyle = pixel.color;
    ctx.fillRect(pos.point.x, pos.point.y, 1, 1);
  }

}
