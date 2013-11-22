part of shared;

class Position extends Component {
  Point point;
  Position(int x, int y) : point = new Point(x, y);
}

class Sand extends Component{}
class Water extends Component{}