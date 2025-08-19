void main() {
  var x = "Hello";
  print("$x");
  x = 20; // This line will cause error bec var infers type once and can't change.
  print("$x");
}
 // If you want to change type, you should use 'dynamic'.