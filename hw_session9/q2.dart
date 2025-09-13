/* Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
the temperature in Fahrenheit. In main(), create an object and print the converted value.*/
class Temperature {
  double celsius;
  Temperature(this.celsius);
  double toFahrenheit() {
    double fahrenheit = (this.celsius * 9.0 / 5.0) + 32.0;
    return fahrenheit;
  }
}

void main() {
  Temperature T1 = Temperature(120);
  print(T1.toFahrenheit());
}
