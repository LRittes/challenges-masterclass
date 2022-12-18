import 'package:cpf_validator/mvvm/viewmodels/home_viewmodel.dart';
import 'package:flutter/material.dart';

class MVVMHomePage extends StatefulWidget {
  const MVVMHomePage({super.key});

  @override
  State<MVVMHomePage> createState() => MVVMHomePageState();
}

class MVVMHomePageState extends State<MVVMHomePage> {
  var cpfValue = TextEditingController();
  var viewmodel = HomeViewmodel();
  @override
  void initState() {
    super.initState();
    viewmodel.addListener((() => setState(() {})));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('MVVM'),
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
                viewmodel.validateCpf(cpfValue.text);
              },
              child: const Text("Save"),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(viewmodel.result ?? '')
          ],
        ),
      ),
    );
  }
}
