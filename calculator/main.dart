var operations = {
  '+': (double a, double b) => a + b,
  '-': (double a, double b) => a - b,
};

abstract class Node {
  double compute();
}

class UnaryNode extends Node {
  double value;
  UnaryNode(double value) {
    this.value = value;
  }

  @override
  double compute() {
    return value;
  }
}

class OperationNode extends Node {
  String operation;
  Node left, right;

  OperationNode(String operation) {
    this.operation = operation;
  }

  void addLeft(Node left) {
    this.left = left;
  }

  void addRight(Node right) {
    this.right = right;
  }

  @override
  double compute() {
    if (right == null) {
      right = new UnaryNode(0);
    }
    return operations[operation](left.compute(), right.compute());
  }
}

Node updateTreeWithValue(Node root, String value) {
  UnaryNode unNode = new UnaryNode(double.parse(value));
  if (root == null) {
    return unNode;
  } else {
    (root as OperationNode).addRight(unNode);
    return root;
  }
}

double computeExpression(String expression) {
  var chars = expression.split("");

  Node root = null;
  String currentValue = "";
  chars.forEach((char) {
    if (operations.keys.contains(char)) {
      root = updateTreeWithValue(root, currentValue);

      OperationNode opNode = new OperationNode(char);
      opNode.addLeft(root);
      root = opNode;

      currentValue = "";
      return;
    }
    currentValue += char;
  });

  if (currentValue.isNotEmpty) {
    root = updateTreeWithValue(root, currentValue);
  }

  return root.compute();
}

void main(List<String> arguments) {
  if (arguments.length == 0) {
    print(
        "Please, you should provide one or more expressions using infix notation...");
    print("dart main.dart '1 + 1' '2 + 2'");
  }
  arguments.forEach((argument) {
    print("${argument} = ${computeExpression(argument)}");
  });
}
