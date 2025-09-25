/*Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.*/
class Shape {
  double area() => 0.0;
}

class Rectangle extends Shape {
  double _width = 1;
  double _height = 1;
  Rectangle(double height, double width) {
    setWidth(width);
    setHeight(height);
  }
  void setWidth(double value) {
    if (value <= 0)
      print("invalid rectangle width");
    else
      _width = value;
  }

  void setHeight(double value) {
    if (value <= 0)
      print("invalid rectangle height");
    else
      _height = value;
  }
}
