main() {
  final bool boolIsTwo = isTwo(2);
  print('boolIsTwo: $boolIsTwo');

  print(say('Bob', 'Howdy'));
  print(say('Bob', 'Howdy', 'Smoke Signal'));
  print(say('Bob', 'Howdy', 'Smoke Signal', 'Monday'));

  print(sayWithDefaultDevice('Bob', 'Howdy'));

  print(sayWithNamedParameters(from: 'Bob', msg: 'Howdy'));
  print(sayWithNamedParameters());

  printListAndMap();
}

// simple function
bool isTwo(int number) {
  return number == 2;
}

// optional positional parameter
String say(String from, String msg, [String device, String time]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (time != null) {
    result = '$result on $time';
  }
  return result;
}

// default value
String sayWithDefaultDevice(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String sayWithNamedParameters({String from = 'John', String msg = 'Hello'}) {
  return '$from says $msg';
}

// default value List and Map
void printListAndMap({
  List<int> list = const [1, 2, 3],
  Map<String, String> gifts = const {
    'first': 'paper',
    'second': 'cotton',
    'third': 'leather'
  }
}) {
  print('list:  $list');
  print('gifts: $gifts');
}
