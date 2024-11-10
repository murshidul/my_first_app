import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: const Text(
          "Natural Beauty of Bangaldesh",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            _naturalmage(),
            const SizedBox(height: 40),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
            const SizedBox(height: 25),
            _textTitle(),
            _textDes(),
            _textWork(),
          ],
        ),
      ),
    );
  }
}

Widget _textTitle() {
  return const Text(
    "Md. Murshidul Hasan",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  );
}

Widget _textDes() {
  return const Text(
    "Managing Partner",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  );
}

Widget _textWork() {
  return const Text(
    "Sasco International",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  );
}

Widget _naturalmage() {
  return Image.asset("images/nature.jpg");
}
