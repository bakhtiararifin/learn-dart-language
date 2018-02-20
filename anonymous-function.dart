main() {
  var list = ['apples', 'bananas', 'oranges'];

  // standard
  list.forEach((String item) {
    print('${list.indexOf(item)}: $item');
  });

  // one line
  list.forEach((String item) => print('${list.indexOf(item)}: $item'));
}
