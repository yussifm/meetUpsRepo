class TodoModel {
  String title;
  String description;

  TodoModel({
    required this.title,
    required this.description,
  });
}

List<TodoModel> todoList = [];

void updateTodo({required int index, required TodoModel data}) {
  todoList[index] = TodoModel(
    title: data.title,
    description: data.description,
  );
}
