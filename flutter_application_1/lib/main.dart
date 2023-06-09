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
    List<Widget> data = [];
    data.add(const Text("This is centered",
        style: TextStyle(
          fontSize: 20,
          color: Colors.lightBlueAccent,
        )));
    data.add(Text("$count"));
    data.add(const Image(
        image: NetworkImage(
            "https://cdn.britannica.com/26/162626-050-3534626F/Koala.jpg")));
    return Scaffold(
      appBar: AppBar(title: const Text("NGOMNGOM")),
      body: Center(child: getData(50, information: "Again")),
      floatingActionButton: FloatingActionButton(
          onPressed: countUp, child: const Icon(Icons.explicit_sharp)),
    );
  }

  List<Widget> listTile(int n) {
    List<Widget> data = [];
    for (var i = 0; i < n; i++) {
      data.add(ListTile(
        title: Text("Menu No. $i"),
        subtitle: const Text("This is subtitle"),
      ));
    }
    return data;
  }

  Widget getData(n, {String information = "Test"}) {
    List<Widget> temp = [];
    for (var i = 1; i <= n; i++) {
      temp.add(Text(information + i.toString(),
          style: const TextStyle(fontSize: 20, color: Colors.blueAccent)));
    }
    temp += listTile(n + 1);
    return ListView(children: temp);
  }

  void countUp() => setState(() => count++);
}
