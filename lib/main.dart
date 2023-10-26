import 'package:flutter/material.dart';
import 'package:new2/data_item.dart';

import 'region.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 196, 191, 191),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Именное дерево"),
        centerTitle: true,
      ),
      body: Stack(children: [
        const Body(),
        Align(
          alignment: Alignment.bottomCenter,
          child: _plantButton(),
        )
      ]),
    );
  }

  _plantButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 44, left: 16, right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Regions();
          }));
        },
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Text(
            'Посадить дерево',
            style: TextStyle(color: Colors.white, fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
