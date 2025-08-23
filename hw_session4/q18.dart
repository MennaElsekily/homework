/* Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.*/
void main() {
  Map<String, String?> env = {
    'ENV': 'prod',
    'DB': null,
  };

  String envType = env['ENV'] ?? 'dev';
  String db = env['DB'] ?? 'local_db';

  print(envType.toUpperCase());
  print(db.toUpperCase());

  if (envType == 'prod') {
    print("Prod ready");
  } else {
    print("Non-prod");
  }
}
