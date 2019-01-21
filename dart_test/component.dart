class Component {
  int width, height, left, top;
  Component({int width, int height, int left, int top}) {
    this.width = width;
    this.height = height;
    this.left = left;
    this.top = top;
  }

  int get right => left + width;
  set right(int value) => left = value - width;

  int get bottom => top + width;
  set bottom(int value) => top = value - height;

  int get area => width * height;
}

main() {
  Component cmp = Component(width: 20, height: 20, top: 0, left: 0);
  print(cmp.area);
}
