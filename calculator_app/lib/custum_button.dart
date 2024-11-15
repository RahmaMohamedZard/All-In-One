import 'package:calculator_app/botn.dart';
import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  CustumButton({super.key, 
  required this.btnColor,
  required this.btnTxt,
  required this.onPressed,

  });
  Color? btnColor;
  String? btnTxt;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 70,
          height: 80,
          child: Text(btnTxt!, style:Constants.btnTextStyle ,),
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: btnColor,
          ),
        ),
      ),
      
    );

      
     
  }
}