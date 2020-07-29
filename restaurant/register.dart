double acc = 0.0;

double _addAcc(value) {
  return acc + value;
}

void sum(num value) {
  acc = _addAcc(value);
  print(value.floor());
}
