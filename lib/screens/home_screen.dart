import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize50 = TextStyle(fontSize: 50);

     

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, 
             children: const [
               Text("Clicks", style: fontSize50),
               Text("0", style: fontSize50),
            ],
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_reaction_rounded),
          onPressed: () { 
            print('Hola Mundo!');
           },)
      );
      
  }




}