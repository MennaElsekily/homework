/* Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.*/
void main() {
  Map<String, String> routes = {
    "/": "Home Page",
    "/products": "Products Page",
    "/profile": "Profile Page",
  };

  String path = "/products";

  switch (path) {
    case "/":
      print(routes["/"]);
      break;
    case "/products":
      print(routes["/products"]);
      break;
    case "/profile":
      print(routes["/profile"]);
      break;
    default:
      print("404 - Page Not Found");
  }
}
