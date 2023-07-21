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

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chu'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Mai Vo Xuan Hien, 08_DH_TMDT',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildRowLayout(),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo.png',
                  height: 200,
                  width: 450,
                ),

                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: const Text('Bấm vào đây!')),
              ],
            )),
      ),
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
