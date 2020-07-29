// All functions return a value. If no return value is specified,
// the statement return null; is implicitly appended to the function body.
bar() {}

class A {
  static void foo() {}
}

void main() {
  var x = bar;
  print("check function...");
  print(bar == x);

  var y = A.foo;
  print(y == x);
  print(A.foo == bar);
  print(A.foo == y);

  var barReturn = bar();
  print("Is bar return null? ${barReturn == null}");
}
