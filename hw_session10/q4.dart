/*Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.*/
class Product {
  String _name = '';
  double _price = 0;

  String get name => _name;
  double get price => _price;

  set name(String value) {
    if (value.trim().isEmpty) {
      print('Invalid name');
    } else {
      _name = value;
    }
  }

  set price(double value) {
    if (value < 0) {
      print('Invalid price');
    } else {
      _price = value;
    }
  }

  double get discountedPrice => _price * 0.9;
}

void main() {
  Product product1 = Product();
  product1.name = 'Headphones';
  product1.price = 1000;
  print('Product: ${product1.name}, price: ${product1.price}');
  print('Discounted (10% off): ${product1.discountedPrice}');
  product1.name = '';
  product1.price = -1;
}
