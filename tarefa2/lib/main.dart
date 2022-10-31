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
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0XFFEC7163),
              Color(0XFFEB5E6B),
              Color(0XFFE94B76),
            ],
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 7,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.amber,
              child: Row(
                children: const [
                  Text("Tinder"),
                ],
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.red,
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.blueGrey,
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.deepPurple,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
