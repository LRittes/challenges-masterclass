import 'package:flutter/material.dart';
import 'package:service_repository/Services/http_client_dio.dart';
import 'package:service_repository/domain/entities/task.dart';
import 'package:service_repository/repositories/get_task.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _repo = GetTaskRepository(ServiceHTTPClient());
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    _repo.getAllTask().then((list) {
      setState(() {
        tasks.addAll(list);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: ((context, i) {
          return ListTile(
            leading: Text("${tasks[i].id}"),
            title: Text(tasks[i].task),
            subtitle: Text("${tasks[i].done}"),
          );
        }),
      ),
    );
  }
}
