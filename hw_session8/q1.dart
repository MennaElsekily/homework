/* Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
the method*/
class Calculator {
  double num1;
  double num2;

  Calculator(this.num1, this.num2);

  void addNumbers() {
    print('Sum: ${num1 + num2}');
  }
}

void main() {
  final calc = Calculator(10, 15);
  calc.addNumbers(); // Sum: 25
}
