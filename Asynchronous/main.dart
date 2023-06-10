void main() async {
  // login
  print(await logInUser());
  print("ทำงานอื่น ๆ");
}

Future<String> logInUser() async {
  // ดึงข้อมูล
  var user = await getUserFromDatabase();
  return "ชื่อผู้ใช้" + " " + user;
}

// ข้อมูลที่จะได้ในอนาคต
Future<String> getUserFromDatabase() {
  return Future.delayed(Duration(seconds: 10), () => "UserName");
}
