class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("my name is $name");
  }
}

Future<String> getDate() {
  return Future.delayed(Duration(seconds: 3), () => "Data Received");
}

Future<void> main() async {
  // async code
  String data = await getDate();
  print(data);
  print("Program End");
}
