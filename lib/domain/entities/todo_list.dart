// This file define the ToDoList class.
// This class is used to manage the list of tasks.
// This class is entity for DDD.

class ToDoList {
  final List<Task> _tasks = [];

  void add(Task task) {
    _tasks.add(task);
  }

  void remove(Task task) {
    _tasks.remove(task);
  }

  bool contains(Task task) {
    return _tasks.contains(task);
  }

  @override
  String toString() {
    return _tasks.toString();
  }
}

class Task {
  final String name;

  Task(this.name);

  @override
  String toString() {
    return name;
  }

  @override
  bool operator ==(Object other) {
    if (other is Task) {
      return name == other.name;
    }
    return false;
  }

  @override
  int get hashCode => name.hashCode;
}
