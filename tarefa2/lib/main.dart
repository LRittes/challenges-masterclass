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
  final text =
      "If the sentence is the essential soul to express oneself in their own way, then the paragraph is the virtual body of it. ";
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
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/tinder_icon.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "Tinder",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            SizedBox(
              height: 40,
              width: 200,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 45,
                    color: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.red,
                        ),
                        const Expanded(
                          child: Text("text 1", textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
