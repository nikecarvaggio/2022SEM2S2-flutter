import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.red,
              child: Row(
                children: [
                  Text("Operaciones"),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Text("Resultados"),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  Text("Botones"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
