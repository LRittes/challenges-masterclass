import 'package:cpf_validator/mvc/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class MVCHomePage extends StatefulWidget {
  const MVCHomePage({super.key});

  @override
  State<MVCHomePage> createState() => MVCHomePageState();
}

class MVCHomePageState extends State<MVCHomePage> {
  var cpfValue = TextEditingController();
  var controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('MVC'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: cpfValue,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text("Save"),
            ),
            const SizedBox(
              height: 50,
            ),
            cpfValue.text == ''
                ? const Text('')
                : controller.validateCpf(cpfValue.text),
          ],
        ),
      ),
    );
  }
}
