import 'package:cpf_validator/mvc/view/home_page.dart';
import 'package:cpf_validator/mvp/view/home_page.dart';
import 'package:cpf_validator/mvvm/view/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVC | MVP | MVVM |',
      home: const NavigatorPage(),
      theme: ThemeData.dark(),
      routes: {
        '/mvc': (context) => const MVCHomePage(),
        '/mvp': (context) => const MVPHomePage(),
        '/mvvm': (context) => const MVVMHomePage(),
      },
    );
  }
}

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/mvc'),
          child: const Text("MVC"),
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/mvp'),
          child: const Text("MVP"),
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/mvvm'),
          child: const Text("MVVM"),
        ),
      ],
    );
  }
}
