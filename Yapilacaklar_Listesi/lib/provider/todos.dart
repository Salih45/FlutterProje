import 'package:flutter/cupertino.dart';
import 'package:Yapilacaklar_Listesi/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Alınacaklar',
      description: '''- Yumurta
- Süt
- Ekmek
- Su''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Okul Planı',
      description: '''- Pazartesi sınava çalış
- Ders notlarını al
- Çantanı hazırla''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Ödevler',
      description: '''- Matematik
- Türkçe
- Din''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Tatil Planı',
      description: '''- Havlu al
- Mont al
- Para çek''',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();

  List<Todo> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void addTodo(Todo todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;

    notifyListeners();
  }
}
