import 'dart:html';

import 'package:flutter/material.dart';
import 'package:insoft_afya/main.dart';

class Longin extends StatefulWidget {
  const Longin({Key? key}) : super(key: key);

  @override
  State<Longin> createState() => _LonginState();
}

class _LonginState extends State<Longin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page de connexion"),
          backgroundColor: Colors.yellow,
        ),
        // ignore: prefer_const_constructors
        
        body: Row(
          children: [
        Expanded(
            child: Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: Text("1"),
        )),
        Expanded(
            child: Container(
          width: 150,
          height: 150,
          color: Colors.red,
          child: Text("2"),
        )),
        Expanded(
            child: Container(
          width: 150,
          height: 150,
          color: Colors.green,
          child: Text("3"),
        ))
          ],
        )
        );
  }
}
