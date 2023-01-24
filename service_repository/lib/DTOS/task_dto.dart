import 'package:service_repository/domain/entities/task.dart';

class TaskDTO {
  static Task fromJsom(Map json) {
    return Task(task: json["task"], done: json["done"], id: json["id"]);
  }
}
