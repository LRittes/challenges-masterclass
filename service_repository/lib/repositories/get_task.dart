import 'package:service_repository/DTOS/task_dto.dart';
import 'package:service_repository/Services/http_client_dio.dart';
import 'package:service_repository/domain/entities/task.dart';

class GetTaskRepository {
  late final ServiceHTTPClient _httpClient;

  GetTaskRepository(this._httpClient);

  Future<List<Task>> getAllTask() async {
    return (await _httpClient.getAll())
        .map((t) => TaskDTO.fromJsom(t))
        .toList();
  }
}
