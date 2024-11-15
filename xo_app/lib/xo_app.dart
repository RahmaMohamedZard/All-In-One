// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class XoApp extends StatefulWidget {
  const XoApp({super.key});

   State<XoApp> createState() => _XoAppScreenState();
}

class _XoAppScreenState extends State<XoApp> {
    String player = 'X';
  String winner = '';
  List<String> board = List.filled(9, '');

  void resetGame() {
    setState(() {
      board = List.filled(9, '');
      player = 'X';
      winner = '';
    });
  }

  void makeMove(int index) {
    if (board[index] == '' && winner == '') {
      setState(() {
        board[index] = player;
        winner = checkWinner();
      
        if (winner == '') {
          player = player == 'X' ? 'O' : 'X';
        }
      });
    }
  }

  String checkWinner() {
    List<List<int>> winPatterns = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];
    for (var pattern in winPatterns) {
      if (board[pattern[0]] != '' &&
          board[pattern[0]] == board[pattern[1]] &&
          board[pattern[1]] == board[pattern[2]]) {
        return board[pattern[0]];
      }
    }

    if (!board.contains('')) return 'Draw';
    return '';
  }
  

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 20, 159, 172),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'TIC TAC TOE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(255, 147, 126, 63),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  winner == '' ? 'Player: $player' : 'Winner: $winner',
                  style: const TextStyle(fontSize: 24),
                ),
              SizedBox(height: 60,),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => makeMove(index),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 104, 191, 191),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child:  Text(
                              board[index],
                              style: const TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ), 
                ),
               SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.center,
                          child:  MaterialButton(onPressed: resetGame
                          , color:Color.fromARGB(255, 31, 70, 73) , 
                          child: Text('NEW GAME' , style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                            ),
                          ),), 
                        ),
                SizedBox(height: 20,),
                Container(
                  child: MaterialButton(onPressed: resetGame,
                  color: Color.fromARGB(255, 31, 70, 73) , 
                          child: Text('RESET GAME' , style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                            ),
                          ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      );
  }
}
