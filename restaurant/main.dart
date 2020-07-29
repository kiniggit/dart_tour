import 'dart:io';
import 'register.dart';
import 'menu.dart';

Function addName(String name) {
  return (String phrase, {String punct: "."}) => "${phrase}, ${name}${punct}";
}

main() {
  print("Welcome to this humble restaurant...");
  print("How should I call you?");
  String name = stdin.readLineSync();
  var addUserName = addName(name);
  print(addUserName("Good morning"));
  print("Do you want to see our menu? [y/n]");
  String answer = stdin.readLineSync();
  if (answer.toLowerCase() == 'y') {
    print("I'll show you our menu... Just a second...");

    menuFood.forEach((value) {
      print('${menuFood.indexOf(value) + 1} - $value');
    });

    menuDrink.forEach((value) {
      print('${menuDrink.indexOf(value) + 1} - $value');
    });
  } else {
    print("Ah... Okay! So... Have you already made up your mind, huh?");
  }

  print("So... What would you like to eat?");
  answer = stdin.readLineSync();
  int option = int.parse(answer);
  print(addUserName("Excellent choice", "!"));
  print("Is your option $answer '${menuFood[option - 1]}'? [y/n]");
  answer = stdin.readLineSync();

  print("And what about drinking?");
  answer = stdin.readLineSync();
  option = int.parse(answer);

  print("Is your option $answer '${menuDrink[option - 1]}'? [y/n]");
  answer = stdin.readLineSync();

  print("Your total is = $acc");

  int value1 = 140;
  double value2 = 140.1;
  sum(value1);
  sum(value2);

  print("Your total is = ${acc > 100}");
}
