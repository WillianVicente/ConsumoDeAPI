import 'package:flutter/material.dart';
import 'package:grupo2/controller/todos_controller.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  final TodoController _controller = TodoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return ListView.builder(
            itemCount: _controller.todos.length,
            itemBuilder: (context, index) {
              return CheckboxListTile(
                title: Text(_controller.todos[index].title),
                value: _controller.todos[index].completed,
                onChanged: (value) {
                  setState(
                    () {
                      _controller.todos[index].completed =
                          !_controller.todos[index].completed;
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
