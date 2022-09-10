import 'package:calculadora/models/button.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget rowButtons(String btn1, String btn2, String btn3, String btn4) {
  return Row(
    children: [
      ElevatedButton(
          onPressed: () {
            print(btn1);
          },
          child: Text(btn1)),
      ElevatedButton(
          onPressed: () {
            print(btn2);
          },
          child: Text(btn2)),
      ElevatedButton(
          onPressed: () {
            print(btn3);
          },
          child: Text(btn3)),
      ElevatedButton(
          onPressed: () {
            print(btn4);
          },
          child: Text(btn4))
    ],
  );
}

Widget rowButtons2(List<ButtonModel> buttonList) {
  List<Widget> list = [];
  buttonList.forEach((element) {
    list.add(
        ElevatedButton(onPressed: element.method, child: Text(element.tittle)));
  });

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: list,
  );
}
