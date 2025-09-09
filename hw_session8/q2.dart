/*Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details.*/

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);
}

void main() {
  final car1 = Car('Toyota', 2020);
  final car2 = Car('BMW', 2023);

  print("${car1.brand},${car1.year}");
  print("${car2.brand},${car2.year}");
}
