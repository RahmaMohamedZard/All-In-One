import 'package:basket_app/basket_app.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const BasketAppScreen());
}
class BasketAppScreen extends StatelessWidget {
  const BasketAppScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketAppScreen(),
    );
  }
}