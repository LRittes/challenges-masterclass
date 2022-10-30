import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 5),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          const Spacer(flex: 1),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Texto 1"),
                  Text("Texto 2"),
                ]),
          ),
          const Spacer(flex: 2),
          Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  Container(
                    height: 10,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                ],
              )),
          const Spacer(flex: 1),
          const Text("Already have an account?"),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
