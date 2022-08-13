import 'package:grupo2/service/network/network.dart';

abstract class ITodosDataSource {
  Future<List<dynamic>> getAll();
}

class TodosDataSource implements ITodosDataSource {
  final NetworkContract _service;
  TodosDataSource(this._service);

  @override
  Future<List<dynamic>> getAll() async {
    List<dynamic> result =
        await _service.get('https://jsonplaceholder.typicode.com/todos');

    return result;
  }
}
