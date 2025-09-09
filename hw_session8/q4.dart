/*Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. -
Give price a default value of 0. - Create two objects: one with a custom price and one with the
default price. Print their details.*/

class Product {
  String name;
  double price;

  Product(this.name, {this.price = 0});
}

void main() {
  final custom = Product('Keyboard', price: 799.0);
  final withDefault = Product('Mouse');

  print(custom.name);
  print(custom.price);
  print(withDefault.name);
  print(withDefault.price);
}
