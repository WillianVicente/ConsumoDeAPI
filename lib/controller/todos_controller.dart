import 'package:flutter/material.dart';

import '../datasources/todos_datasource.dart';
import '../models/todo_model.dart';
import '../repositories/todos_repository.dart';
import '../service/network/dio_network.dart';

class TodoController extends ChangeNotifier {
  TodoController() {
    getAll();
  }

  final _repository = TodosRepository(TodosDataSource(DioNetwork()));

  List<TodoModel> todos = [];

  Future<void> getAll() async {
    todos = await _repository.getAll();
    notifyListeners();
  }
}
