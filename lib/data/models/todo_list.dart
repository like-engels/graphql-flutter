import 'todo_model.dart';

class TodoList {
 final List<TodoModel> todos;

 TodoList({required this.todos});

 factory TodoList.fromJson(Map<String, dynamic> json) {
   return TodoList(
     todos: (json['data'] as List<dynamic>)
         .map((todoJson) => TodoModel.fromJson(todoJson))
         .toList(),
   );
 }
}