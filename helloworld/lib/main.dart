// Source: https://dart.dev/guides/language/language-tour

import 'variables.dart';

// Define a function.
printInteger(int aNumber) {
  print('The int number is $aNumber.'); // Print to console.
}

printDouble(double aNumber) {
  print('The double number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
  print('This variable was imported from a different file = $test1');
  // Unlike Java, Dart doesn’t have the keywords public, protected,
  // and private. If an identifier starts with an underscore (_),
  // it’s private to its library so the code below won't work.
  // print('This variable was also imported from a different file = $_test2');
  // But I should be able to call a function from the imported file.
  printPrivateVariables();

  // Although Dart is strongly typed, type annotations are optional because
  // Dart can infer types. In the code above, number is inferred to be of
  // type int. When you want to explicitly say that no type is expected,
  // use the special type dynamic.
  var number = 43; // Declare and initialize a variable.
  var number2 = 1.2;
  printInteger(number); // Call a function.
  printDouble(number2);
}
