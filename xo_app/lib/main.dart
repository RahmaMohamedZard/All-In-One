import 'package:flutter/material.dart';
import 'package:xo_app/xo_app.dart';

void main(){
  runApp(const XoApp() );
}

class XoApp extends StatelessWidget {
  const XoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XoApp(),
    );
  }
}