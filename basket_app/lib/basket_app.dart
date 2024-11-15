// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasketAppScreen extends StatefulWidget {
  const BasketAppScreen({super.key});

  @override
  State<BasketAppScreen> createState() => _BasketAppScreenState();
}

class _BasketAppScreenState extends State<BasketAppScreen> {
    int x = 0;
    int y = 0;

void addPointsA (int Points){
  setState(() {
    x += Points;
  });
}


void addPointsB (int Points){
  setState(() {
    y += Points;
  });
}


void addPoints (){
  setState(() {
    x = 0;
    y = 0;
  });
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                color: Colors.amber,
                width: 450,
                height: 35,
                child: Text('Basketball Points Counter',
                style: TextStyle(fontSize: 20,
                color: Colors.white,
                
                ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    SizedBox(height: 30,),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Text('Team A', style: TextStyle(
                      fontSize: 35, color: Colors.black,
                      ),),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 70,
                      child: Text('$x', style: TextStyle(
                        fontSize: 40, color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  SizedBox(height: 40,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.center,
                          child:  MaterialButton(onPressed: ()
                          =>addPointsA(1), color: Colors.amber, 
                          child: Text('Add 1 Points' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                            ),
                          ),), 
                        ),
                        SizedBox(height: 20,),
                          Container(
                          alignment: Alignment.center,
                          child:  MaterialButton(onPressed: ()
                          =>addPointsA(2),  color: Colors.amber,
                          child: Text('Add 2 Points' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                            ),
                          ),), 
                        ),
                         SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.center,
                          child:  MaterialButton(onPressed: ()
                          =>addPointsA(3),  color: Colors.amber,
                          child: Text('Add 3 Points' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                            ),
                          ),), 
                        ),
                         SizedBox(height: 20,),
                      ],
                    ),
                      ],
                    ),

                 Container(
                  width: 2,
                  height: 380,
                  color: Colors.black,
                 ),

                     Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    SizedBox(height: 30,),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Text('Team B', style: TextStyle(
                      fontSize: 35, color: Colors.black,
                      ),),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 70,
                      child: Text('$y', style: TextStyle(
                        fontSize: 40, color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                     SizedBox(height: 40,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.center,
                          child:  MaterialButton(onPressed: ()
                          =>addPointsB(1), color: Colors.amber, 
                          child: Text('Add 1 Points' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                            ),
                          ),), 
                        ),
                         SizedBox(height: 20,),
                          Container(
                          alignment: Alignment.center,
                          child:  MaterialButton(onPressed: ()
                          =>addPointsB(2),  color: Colors.amber,
                          child: Text('Add 2 Points' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                            ),
                          ),), 
                        ),
                         SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.center,
                          child:  MaterialButton(onPressed: ()
                          =>addPointsB(3),  color: Colors.amber,
                          child: Text('Add 3 Points' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                            ),
                          ),), 
                        ),
                         SizedBox(height: 20,),
                      ],
                    ),
                      ],
                    ),
                   ],
                  ),
                  SizedBox(height: 100,),
                  Container(
                    alignment: Alignment.center,
                    height: 150,
                          child:  MaterialButton(onPressed: 
                          addPoints,  color: Colors.amber,
                          child: Text('Reset' , style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                            ),
                          ),), 
                  ),
                ],
              ),
            
          ),
        ),
        
      );
      
    
  }
}