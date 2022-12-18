import 'package:cpf_validator/mvp/presenters/home_presenter.dart';
import 'package:flutter/material.dart';

class MVPHomePage extends StatefulWidget {
  const MVPHomePage({super.key});

  @override
  State<MVPHomePage> createState() => MVPHomePageState();
}

class MVPHomePageState extends State<MVPHomePage> implements HomePageView {
  var cpfValue = TextEditingController();
  late Presenter presenter;

  @override
  void initState() {
    super.initState();
    presenter = Presenter(this);
  }

  @override
  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('MVP'),
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
                presenter.validateCpf(cpfValue.text);
              },
              child: const Text("Check"),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(presenter.result ?? '')
          ],
        ),
      ),
    );
  }
}
