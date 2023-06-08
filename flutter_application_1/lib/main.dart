import "package:flutter/material.dart";

void main() {
  var app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Application",
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: Scaffold(
            appBar: AppBar(title: const Text("NGOMNGOM")),
            body: const Center(
                child: Text(
              "This is centered",
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlueAccent,
              ),
            ))));
  }
}
