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

  // Words with the superscript 1 are contextual keywords, which have meaning
  // only in specific places. They’re valid identifiers everywhere.
  print('This should be a valid variable name      = $async');

  // Words with the superscript 3 are newer, limited reserved words related
  // to the asynchrony support that was added after Dart’s 1.0 release.
  // You can’t use await or yield as an identifier in any function
  // body marked with async, async*, or sync*.
  print('This should also be a valid variable name = $yield');

  var name = 'String1';
  dynamic name2 = name;
  String name3 = name2;
  print('$name $name2 $name3');

  int counter;
  print('is everything an object? ' + (counter == null).toString());

  // Use const for variables that you want to be compile-time constants.
  const piFixed2 = 3.14;
  const double pi = piFixed2;
  print("quick pi = $pi and $piFixed2");

  const arr = [];
  // shouldn't work
  //arr = [42];
  var varr = const [];
  // this works...
  varr = [1, 2, 3, 4, 5, 6];
  print('$arr $varr');
}
