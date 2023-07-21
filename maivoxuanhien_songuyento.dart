import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isPrime = false;

  bool _checkPrime(int n) {
    if (n < 2) {
      return false;
    }
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  void _onCheckPressed() {
    final int number = int.tryParse(_textEditingController.text) ?? 0;
    setState(() {
      _isPrime = _checkPrime(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiểm tra số nguyên tố'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nhập số',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _onCheckPressed,
              child: const Text('Kiểm tra'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Số ${_textEditingController.text} ${_isPrime ? 'là' : 'không là'} số nguyên tố',
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}