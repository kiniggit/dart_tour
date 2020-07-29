void main(List<String> arguments) {
  if (arguments.length == 0) {
    print(
        "Please, you should provide one or more expressions using infix notation...");
    print("dart main.dart '1 + 1' '2 + 2'");
  }
  arguments.forEach(print);
}
