double calculateArea(double height, double base) {
  double area = (0.5 * base) * height;
  return (area * 100).roundToDouble() / 100;
}
