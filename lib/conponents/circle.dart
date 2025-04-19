import 'package:flutter/material.dart';
class circle extends StatefulWidget {
  const circle({super.key});

  @override
  State<circle> createState() => _circleState();
}

class _circleState extends State<circle> {
  @override
  Widget build(BuildContext context) {
    return   ClipOval(
    child: Container(
    width: 100,
    height: 100,
    color: const Color(0xFFFFEBCB),
    ),
    );
  }
}
