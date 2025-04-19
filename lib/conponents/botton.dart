import 'package:flutter/material.dart';
import 'package:ContactsScreen/views/screen.dart'; // تأكدي ان ده موجود

class Botton extends StatefulWidget {
  final String txt;

  const Botton({super.key, required this.txt});

  @override
  State<Botton> createState() => _BottonState();
}

class _BottonState extends State<Botton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const screen()));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 12),
      ),
      child: Text(
        widget.txt,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
