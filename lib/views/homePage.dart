import 'package:ContactsScreen/views/secondPage.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 70,
            right: -200,
            child: ClipOval(
              child: Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFFFEBCB),
                    borderRadius: BorderRadius.circular(200)
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 300),
              const Text(
                'Practice Mindfulness',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Get on the right track towards\nmindfulness',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(radius: 5, backgroundColor: Colors.purple),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Skip', style: TextStyle(color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>secondPage()));},
                      child: const Text('Next', style: TextStyle(color: Colors.black),)

                    ),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
