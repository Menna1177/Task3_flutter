import 'package:ContactsScreen/views/thirdPage.dart';
import 'package:flutter/material.dart';
class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [(
          IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back,color: Colors.purple,))),
          Positioned(
            top: 70,
            left: -200,
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
                'Get started with Yoga',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Easly to ge started with your yoga\njourney',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 5, backgroundColor: Colors.purple),
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
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>thirdPage()));},
                        child: const Text('Next', style: TextStyle(color: Colors.black),)

                    ),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );;
  }
}
