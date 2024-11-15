// ignore_for_file: prefer_const_constructors, camel_case_types
import 'dart:math';
import 'package:calculator_app/botn.dart';
import 'package:calculator_app/custum_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  String equation = '';
  String result = '0';
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.grey[500],
          title: Text('Calculator App', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        backgroundColor: const Color.fromARGB(255, 138, 193, 238),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             Container(
                margin:const EdgeInsets.only(right: 16),
                alignment: Alignment.centerRight,
                child: Text(equation, style: Constants.style1,)),
               Divider(color: Colors.white,thickness: 2,),
               Container(
                margin: const EdgeInsets.only(right: 16),
                alignment: Alignment.centerRight,
                child: Text(result, style: Constants.style1,)),
              Row(
                children: [
                  CustumButton(btnColor: Colors.amber[300], btnTxt: 'C',onPressed:() => setState(() {
                    equation= '';
                    result = '0';
                  }),),
                  CustumButton(btnColor: Colors.amber[300], btnTxt: '%',onPressed:() {},),
                  CustumButton(btnColor: Colors.amber[300], btnTxt: 'DEL',onPressed: () => setState((){
                    equation = equation.substring(0, equation.length - 1);
                  }),),
                  CustumButton(btnColor: Colors.amber[300], btnTxt: '+/-',onPressed:() {} ,),
             
                ],
              ),
              Row(
                children: [
                  CustumButton(btnColor: Colors.blue, btnTxt: '7',onPressed:()  => setState(() => equation = '${equation}7') ,),
                  CustumButton(btnColor: Colors.blue, btnTxt: '8',onPressed:()  => setState(() => equation = '${equation}8') ,),
                  CustumButton(btnColor: Colors.blue, btnTxt: '9',onPressed: ()  => setState(() => equation = '${equation}9'),),
                  CustumButton(btnColor: Colors.grey, btnTxt: '/',onPressed:()  => setState(() => equation = '${equation}/') ,),
                  
                ],
              ),
              Row(
                children: [
                  CustumButton(btnColor: Colors.blue, btnTxt: '4',onPressed:()  => setState(() => equation = '${equation}4'),),
                  CustumButton(btnColor: Colors.blue, btnTxt: '5',onPressed: ()  => setState(() => equation = '${equation}5'),),
                  CustumButton(btnColor: Colors.blue, btnTxt: '6',onPressed: ()  => setState(() => equation = '${equation}6'),),
                  CustumButton(btnColor: Colors.grey, btnTxt: '*',onPressed: ()  => setState(() => equation = '${equation}*'),),
                 
                ],
              ),
              Row(
                children: [
                  CustumButton(btnColor: Colors.blue, btnTxt: '1',onPressed:()  => setState(() => equation = '${equation}1'),),
                  CustumButton(btnColor: Colors.blue, btnTxt: '2',onPressed: ()  => setState(() => equation = '${equation}2'),),
                  CustumButton(btnColor: Colors.blue, btnTxt: '3',onPressed: ()  => setState(() => equation = '${equation}3'),),
                  CustumButton(btnColor: Colors.grey, btnTxt: '-',onPressed: ()  => setState(() => equation = '${equation}-'),),
                ],
              ),
              Row(
                children: [
                  CustumButton(btnColor: Colors.blue, btnTxt: '0',onPressed:()  => setState(() => equation = '${equation}0'),),
                  CustumButton(btnColor: Colors.blue, btnTxt: '.',onPressed: () {},),
                  CustumButton(btnColor: Colors.red[400], btnTxt: '=',onPressed: () => setState(() {
                  Parser p = Parser();
                  Expression exp = p.parse(equation);
                  ContextModel cm = ContextModel();
                  double eval = exp.evaluate(EvaluationType.REAL, cm);
                  result = eval.toString();
                }),),
                CustumButton(btnColor: Colors.grey, btnTxt: '+',onPressed: ()  => setState(() => equation = '${equation}+'),),
                ],
              ),
  ]),
          ),
        ),
      );
    
  }
}