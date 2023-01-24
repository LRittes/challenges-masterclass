class Task {
  String? id;
  final String task;
  bool done;

  Task({
    this.id,
    required this.task,
    this.done = false,
  });
}
