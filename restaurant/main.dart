import 'dart:io';
import 'menu.dart';

main() {
  print("Welcome to this humble restaurant...");
  print("Do you want to see our menu? [y/n]");
  String menuAnswer = stdin.readLineSync();
  if (menuAnswer.toLowerCase() == 'y') {
    print("I'll show you our menu... Just a second...");
  } else {
    print("Ah... Okay! So... Have you already made up your mind, huh?");
  }
}
