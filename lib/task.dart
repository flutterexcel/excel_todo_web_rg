import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {

  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                  
                  child: Center(
                  
                      child: Container(
                        color: Colors.red,

                        width: 400,
                        height: 200,
                        alignment: Alignment.center,
                        child: const Text(

                           
                          "NO TASK TO DO!",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),

                        
                      ),
                    ),
                  
                );
  }
}