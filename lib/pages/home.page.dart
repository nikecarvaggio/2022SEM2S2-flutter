import 'package:calculadora/controller/operation.controller.dart';
import 'package:calculadora/models/button.model.dart';
import 'package:calculadora/widgets/rowButtons.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map results = {"operation":'', "result":''};
  String resultsRealTime='';
  OperationController operation = new OperationController();

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
                  
                  Text(results?["result"]==null ? '' :results?["result"]),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Text(results?["operation"]==null ? '' :results?["operation"]),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //height: 100,
              color: Colors.grey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  rowButtons2([
                    ButtonModel(
                        tittle: "%",
                        method: () {
                          print("%");
                        }),
                    ButtonModel(
                        tittle: "CE",
                        method: () {
                          print("CE");
                        }),
                    ButtonModel(
                        tittle: "C",
                        method: () {
                          print("C");
                        }),
                    ButtonModel(
                        tittle: String.fromCharCode(8592),
                        method: () {
                          
                          var temp = results["operation"].toString();
                          setState(() {
                            results = operation.addOperation(temp.substring(0,temp.length-1));
                          });
                        }),
                  ]),
                  rowButtons2([
                    ButtonModel(
                        tittle: "1/x",
                        method: () {
                          print("1/x");
                        }),
                    ButtonModel(
                        tittle: "x" + String.fromCharCode(0178),
                        method: () {
                          print("X2");
                        }),
                    ButtonModel(
                        tittle: String.fromCharCode(8730),
                        method: () {
                          setState(() {
                            results = operation.addOperation("sqrt(");
                          });
                        }),
                    ButtonModel(
                        tittle: String.fromCharCode(0247),
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "/");
                          });
                        }),
                  ]),
                  rowButtons2([
                    ButtonModel(
                        tittle: "7",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "7");
                          });
                        }),
                    ButtonModel(
                        tittle: "8",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "8");
                          });
                        }),
                    ButtonModel(
                        tittle: "9",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "9");
                          });
                        }),
                    ButtonModel(
                        tittle: "x",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "*");
                          });
                        }),
                  ]),
                  rowButtons2([
                    ButtonModel(
                        tittle: "4",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "4");
                          });
                        }),
                    ButtonModel(
                        tittle: "5",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "5");
                          });
                        }),
                    ButtonModel(
                        tittle: "6",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "6");
                          });
                        }),
                    ButtonModel(
                        tittle: "-",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "-");
                          });
                        }),
                  ]),
                  rowButtons2([
                    ButtonModel(
                        tittle: "1",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "1");
                          });
                          ;
                        }),
                    ButtonModel(
                        tittle: "2",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "2");
                          });
                        }),
                    ButtonModel(
                        tittle: "3",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "3");
                          });
                        }),
                    ButtonModel(
                        tittle: "+",
                        method: () {
                          setState(() {
                            results = operation.addOperation(results?["operation"] + "+");
                          });
                        }),
                  ]),
                  rowButtons2([
                    ButtonModel(
                        tittle: "+/-",
                        method: () {
                          print("+/-");
                        }),
                    ButtonModel(
                        tittle: "0",
                        method: () {
                          print("0");
                        }),
                    ButtonModel(
                        tittle: ",",
                        method: () {
                          print(",");
                        }),
                    ButtonModel(
                        tittle: "=",
                        method: () {
                          setState(() {
                            
                          });
                        }),
                  ])
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
