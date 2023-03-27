import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/screens/counter_screen.dart';
// import 'package:my_app/screens/home_screen.dart';
void main(){
  runApp(const VeniAquiApp());
} 
class VeniAquiApp extends StatelessWidget {
  const VeniAquiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
    );
  }
}