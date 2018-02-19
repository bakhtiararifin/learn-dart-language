main() {
  final list = const [1, 2, 3];
  list.forEach(printElement);

  print(loudify('hello'));
}

void printElement(int element) {
  print(element);
}

final loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';