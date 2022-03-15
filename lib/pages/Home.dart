// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var number = 0;

  void increament() {
    number++;
    setState(() {});
  }

  void decreament() {
    number--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
          child: Text(
        'Contador\n $number',
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () => increament()),
    );
  }
}
