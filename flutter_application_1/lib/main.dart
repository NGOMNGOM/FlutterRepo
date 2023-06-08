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
        home: Index());
  }
}

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NGOMNGOM")),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            const Text(
              "This is centered",
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlueAccent,
              ),
            ),
            Text("$count"),
            const Image(
                image: NetworkImage(
                    "https://cdn.britannica.com/26/162626-050-3534626F/Koala.jpg"))
          ])),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() => count++);
          },
          child: const Icon(Icons.explicit_sharp)),
    );
  }
}
