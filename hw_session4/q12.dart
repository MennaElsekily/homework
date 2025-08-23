/* Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length*/
void main() {
  Map<String, String?> user = {'name': 'Ali', 'phone': null};

  String? phone = user['phone'];
  if (phone == null) {
    print("No phone number available.");
  }

  user['phone'] = "0123456789";
  print("Updated phone length: ${user['phone']!.length}");
}
