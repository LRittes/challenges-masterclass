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
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) => MyExpansionTile(task: i + 1),
      ),
    );
  }
}

class MyExpansionTile extends StatefulWidget {
  const MyExpansionTile({
    super.key,
    required this.task,
  });

  final int task;

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedAlign(
            alignment: Alignment.topCenter,
            duration: const Duration(milliseconds: 500),
            heightFactor: isSelected ? 7 : 1,
            child: Container(
              width: double.infinity,
              height: 40,
              color: Colors.grey.withOpacity(0.4),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "task ${widget.task}",
                      style: TextStyle(
                        color: isSelected ? Colors.blue[500] : null,
                      ),
                    ),
                    Icon(
                      isSelected ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: isSelected ? Colors.blue[500] : null,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 0,
              ),
              color: Colors.white10,
              child: Column(
                children: const [
                  FlutterLogo(
                    size: 60,
                  ),
                  Text(
                    "asdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasdaasdasda",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
