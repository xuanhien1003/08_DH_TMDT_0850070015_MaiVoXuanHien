
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My HomeWork',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  dynamic kq = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController numberA = TextEditingController();
    TextEditingController numberB = TextEditingController();

    void checkPrimeNumber() {
      int number = int.tryParse(numberA.text) ?? 0;
    } //checkPrimeNumber

    void cong() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        kq = a + b;
      });
    } //void cong

    void tru() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        kq = a - b;
      });
    } //void tru

    void nhan() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        kq = a * b;
      });
    } //void nhan

    void chia() {
      int a = int.tryParse(numberA.text) ?? 0;
      int b = int.tryParse(numberB.text) ?? 0;
      setState(() {
        if (b == 0) {
          kq = 'vo nghiem';
        }
        else {
          kq = a / b;
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/1011/1011863.png',
                  width: 100,
                ),
                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: numberA,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Nhập số A',
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: numberB,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Nhập số B',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Ket qua $kq',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: 80,
                        child: ElevatedButton(
                            onPressed:cong,
                            child: const Text('+')
                        )
                    ),
                    SizedBox(
                        width: 80,
                        child: ElevatedButton(
                            onPressed: tru,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: const Text('-')
                        )
                    ),
                    SizedBox(
                        width: 80,
                        child: ElevatedButton(
                            onPressed: nhan,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow,
                            ),
                            child: const Text('x')
                        )
                    ),
                    SizedBox(
                        width: 80,
                        child: ElevatedButton(
                            onPressed: chia,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(':')
                        )
                    ),

                  ], // children

                ),
              ],
            )),
      ),
    );
  }


}