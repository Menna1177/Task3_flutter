import 'package:ContactsScreen/views/homePage.dart';
import 'package:flutter/material.dart';
class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homePage(),
    );
  }
}
