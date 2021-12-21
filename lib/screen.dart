import 'package:flutter/material.dart';



class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: Container(
                  color: Color(0xFF),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    "TODO APP IN FLUTTER",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              );


                
  }
}