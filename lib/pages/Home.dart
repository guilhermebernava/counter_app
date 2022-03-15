// ignore_for_file: file_names

import 'package:flutter/material.dart';

//classe inicial
class Home extends StatefulWidget {
  @override
  //STATE sendo criado a partir da classe base e chamando
  //a classe que extend esse estado.
  State<Home> createState() => _HomeState();
}

//classe criada que extende o STATE<HOME>
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

  void zero() {
    setState(() {
      number = 0;
    });
  }

  //LOGICA QUE CRIA O WIDGET
  //quando for um STATELESS so vai existir esse CONSTRUTOR de BUILD
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const Spacer(),
          Text(
            "Contador \n $number",
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              const Spacer(),
              FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () => decreament()),
              const Spacer(),
              FloatingActionButton(
                  child: const Icon(Icons.add), onPressed: () => increament()),
              const Spacer()
            ],
          ),
          const Spacer(),
          ElevatedButton(child: const Text("ZERAR"), onPressed: () => zero()),
          const Spacer()
        ],
      )),
    );
  }
}
