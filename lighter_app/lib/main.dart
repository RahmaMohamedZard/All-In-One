import 'package:flutter/material.dart';

void main(){
  runApp (const LighterScreen());
}

class LighterScreen extends StatelessWidget {
  const LighterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LighterScreen(),
    );
  }
}
