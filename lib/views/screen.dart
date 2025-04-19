import 'package:ContactsScreen/conponents/circle.dart';
import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Home Screen",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),


                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/love.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  Icon(Icons.send, color: Colors.black),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                circle(),
                circle(),
                circle(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: const Color(0xFFFFEBCB),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => screen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 12),
              ),
              child: const Text(
                'open',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lorem ipsum dolor sit amet,consectetur.\nVivamus lacinia odio vitae vestibulum.\nInteger nec odio. Praesent libero. \nSed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.'
                    ,style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("View all 109 comments",
                  style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
