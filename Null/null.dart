void main() {
  Employee? emp = Employee();
  String? name;
  name ??= "Hello";
  print(name);
  emp?.showData();
}

class Employee {
  void showData() {
    print("Test");
  }
}
