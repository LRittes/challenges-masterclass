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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isCircle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedAlign(
        alignment: isCircle ? Alignment.bottomRight : Alignment.topCenter,
        duration: const Duration(seconds: 1),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ShapeWidget(
            onTap: () => setState(() {
              isCircle = !isCircle;
            }),
            shape: isCircle
                ? Circle(
                    size: 60,
                    color: Colors.red,
                  )
                : Rectangle(
                    height: 40,
                    width: 90,
                    borderRadius: 0,
                    color: Colors.blueAccent,
                  ),
          ),
        ),
      ),
    );
  }
}

abstract class Shape {
  final double height, width;
  final Color color;
  final double borderRadius;

  Shape({
    required this.borderRadius,
    required this.height,
    required this.width,
    required this.color,
  });
}

class Circle extends Shape {
  final double size;
  Circle({
    required this.size,
    required super.color,
  }) : super(
          height: size,
          width: size,
          borderRadius: size / 2,
        );
}

class Rectangle extends Shape {
  Rectangle({
    required super.borderRadius,
    required super.height,
    required super.width,
    required super.color,
  });
}

class ShapeWidget extends StatelessWidget {
  const ShapeWidget({
    super.key,
    required this.shape,
    required this.onTap,
  });

  final Shape shape;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        height: shape.height,
        width: shape.width,
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          color: shape.color,
          borderRadius: BorderRadius.circular(shape.borderRadius),
        ),
      ),
    );
  }
}
