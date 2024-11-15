// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LighterScreen extends StatefulWidget {
  const LighterScreen({super.key});

  @override
  State<LighterScreen> createState() => _LighterScreenState();
}

class _LighterScreenState extends State<LighterScreen> { 
  bool switcher = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              child:  Icon( Icons.lightbulb,
              color: switcher? Colors.orange: Colors.grey,
              size: 70,
             ),
             ),
             
             SizedBox(height: 20,),
             MaterialButton(onPressed: (){setState(() {
               switcher = ! switcher;
             });
             },
              color: switcher? Colors.red: Colors.green,
              child: Text(switcher? 'off':'on',
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              ),
              ),
             ),

              
            ],
          ),
        ),
      ),
     
    );
  }
}