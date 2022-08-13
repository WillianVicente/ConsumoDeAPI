import '../datasources/todos_datasource.dart';
import '../models/todo_model.dart';

abstract class ITodosRepository {
  Future<List<TodoModel>> getAll();
}

class TodosRepository implements ITodosRepository {
  final TodosDataSource datasourceTodos;

  TodosRepository(this.datasourceTodos);

  @override
  Future<List<TodoModel>> getAll() async {
    List<dynamic> result = await datasourceTodos.getAll();
    List<TodoModel> todos = result.map<TodoModel>((item) {
      return TodoModel.fromMap(item);
    }).toList();

    return todos;
  }
}
