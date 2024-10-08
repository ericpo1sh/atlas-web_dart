int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  return "${a} + ${b} = ${add(a, b)}\n${a} - ${b} = ${sub(a, b)}";
}
