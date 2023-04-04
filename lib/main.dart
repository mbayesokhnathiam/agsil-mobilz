import 'package:ajiledakarv/auth/begin.dart';
import 'package:ajiledakarv/auth/login.dart';
import 'package:ajiledakarv/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    
      home: begin(),
    );
  }
}

