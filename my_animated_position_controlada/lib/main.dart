import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: MyAnimatedPosition(),
      ),
    );
  }
}

class MyAnimatedPosition extends StatefulWidget {
  const MyAnimatedPosition({super.key});

  @override
  State<MyAnimatedPosition> createState() => _MyAnimatedPositionState();
}

class _MyAnimatedPositionState extends State<MyAnimatedPosition>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  late final Animation<AlignmentGeometry> alignment;
  late final Animation<double> myWith;
  late final Animation<double> radius;
  late final Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    alignment = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomRight)
        .animate(CurvedAnimation(
      parent: controller,
      curve: Curves.bounceOut,
      reverseCurve: Curves.ease,
    ));

    myWith = Tween<double>(begin: 100, end: 40).animate(controller);
    radius = Tween<double>(begin: 0, end: myWith.value / 2).animate(controller);
    colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.red).animate(CurvedAnimation(
      parent: controller,
      curve: const Interval(
        0.5,
        1,
        curve: Curves.decelerate,
      ),
    ));

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (controller.isCompleted) {
          controller.reverse();
        } else {
          controller.forward();
        }
      },
      child: Align(
        alignment: alignment.value,
        child: Container(
          width: myWith.value,
          height: 40,
          decoration: BoxDecoration(
            color: colorAnimation.value,
            borderRadius: BorderRadius.circular(radius.value),
          ),
        ),
      ),
    );
  }
}
