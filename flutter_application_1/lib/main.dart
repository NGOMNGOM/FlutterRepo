import "package:flutter/material.dart";

void main() {
  var app = MaterialApp(
      title: "My Application",
      home: Scaffold(
          appBar: AppBar(title: const Text("NGOMNGOM")),
          body: const Text("This is body")));
  runApp(app);
}
