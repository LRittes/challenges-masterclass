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
      child: Stack(
        children: [
          const Background(),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 10,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 56, 125, 228),
                        Color.fromARGB(255, 35, 65, 163),
                        Color.fromARGB(255, 77, 17, 134),
                      ],
                    ).createShader(bounds),
                    child: const Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: SizedBox(
                    width: 300,
                    height: 200,
                    child: LoginForm(),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  "FORGOT PASSWORD ?",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
                const Spacer(
                  flex: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Positioned(
          top: 0,
          bottom: 20,
          child: Container(
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 139, 139, 139),
                    blurRadius: 5,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 100, 100, 100),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "fulano@email.com",
                        label: Text("Email"),
                        hintStyle: TextStyle(
                          fontSize: 12,
                        )),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text("Password"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 170,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 35, 65, 163),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 56, 125, 228),
                  Color.fromARGB(255, 35, 65, 163),
                  Color.fromARGB(255, 77, 17, 134),
                ],
              ),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
