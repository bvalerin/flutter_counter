import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {


const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}



class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize50 = TextStyle(fontSize: 100);

    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, 
             children: [
               const Text("Clicks", style: fontSize50),
               Text('$counter', style: fontSize50),
            ],
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActionBottons(
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset,
        )
      );
      
  }
}

class CustomFloatingActionBottons extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  
  const CustomFloatingActionBottons({
    super.key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed:() => decreaseFn(),
          ),

          FloatingActionButton(
          child: const Icon(Icons.refresh_outlined),
          onPressed: () => resetFn(),
          ),

          FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
          )
      ],
    );
  }
}