part of shared;

class Pixel extends Component {
  String color;
  Pixel(this.color);
}

class Position extends Component {
  Point point;
  Position(int x, int y) : point = new Point(x, y);
}