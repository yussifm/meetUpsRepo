class TodoModel {
  String title;
  String description;

  TodoModel({
    required this.title,
    required this.description,
  });
}

List<TodoModel> todoList = [];

void createTodo({required TodoModel todo}) {
  todoList.add(todo);
}
