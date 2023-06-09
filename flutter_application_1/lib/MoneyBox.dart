import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MoneyBox extends StatelessWidget {
  String info = "";
  double number = 0;
  Color color = Colors.white;
  double size = 0;
  MoneyBox(
      {super.key,
      required this.info,
      required this.number,
      required this.color,
      required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      height: size,
      child: Row(
        children: [
          Text(
            info,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Expanded(
              child: Text(
            "$number Baht",
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
            textAlign: TextAlign.right,
          ))
        ],
      ),
    );
  }
}
