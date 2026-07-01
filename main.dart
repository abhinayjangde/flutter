Future<String> fetchName() {
  return Future.delayed(Duration(seconds: 2), () => "Abhi");
}

Stream<int> counter() async* {
  for (int i = 1; i <= 5; i++) {
    yield i;
  }
}

void main() async {
  var count = await counter();
  print(count);
}
