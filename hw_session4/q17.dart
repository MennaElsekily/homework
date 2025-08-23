/* Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.*/
void main() {
  double price = 27.532;
  String priceStr = price.toStringAsFixed(2);
  String formatted = priceStr.padLeft(10);
  print(formatted);
  print(priceStr.length);
}
