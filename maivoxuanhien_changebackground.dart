import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors Changing Background',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorChangeScreen(),
    );
  }
}
class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  State <ColorChangeScreen> createState() => _ColorChangeScreen();
}

class _ColorChangeScreen extends State<ColorChangeScreen> {
  int counter = 0;
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.grey,
    // Add more colors here
  ];

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  Color _getRandomColor() {
    Random random = Random();
    return colors[random.nextInt(colors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors Changing Background'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                _incrementCounter();
              },
              child: const Text('Change Background Colors'),
            ),
          ],
        ),
      ),
      backgroundColor: counter.isEven ? _getRandomColor() : null,
    );
  }
}


Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}