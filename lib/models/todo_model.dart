class TodoModel {
  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory TodoModel.fromMap(Map<String, dynamic> map) => TodoModel(
        id: map['id'],
        title: map['title'],
        userId: map['userId'],
        completed: map['completed'],
      );
}
