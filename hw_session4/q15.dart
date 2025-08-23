/* Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.*/
void main() {
  String path = '/Profile';
  switch (path) {
    case '/':
      print("Welcome to HomePage");
      break;
    case '/Products':
      Map<String, dynamic> products = {"id": 1, "Name": "Laptop"};
      print("Products Page: $products");
      break;
    case '/Profile':
      String? user = null;
      print(user ?? "Guest Profile");
      break;
    default:
      print("Not found");
  }
}
