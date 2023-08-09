import 'package:flutter_test/flutter_test.dart';
import 'package:strawberry_chocolate/domain/entities/todo_list.dart';

// This is unit test fot to do list app

void main() {
  // Check added task is contained in the list
  test('Add task', () {
    final list = ToDoList();
    list.add(Task("task1"));
    //check boolean
    expect(list.contains(Task("task1")), true);
  });

  test('Remove task', () {
    final list = ToDoList();
    list.add(Task("task1"));
    list.remove(Task("task1"));
    expect(list.contains(Task("task1")), false);
  });
  // Basic test of ToDoList
  test('ToDoList test', () {
    final list = ToDoList();
    list.add(Task("task1"));
    list.add(Task("task2"));
    list.add(Task("task3"));
    expect(list.contains(Task("task1")), true);
    expect(list.contains(Task("task2")), true);
    expect(list.contains(Task("task3")), true);
    expect(list.contains(Task("task4")), false);
    list.remove(Task("task2"));
    expect(list.contains(Task("task1")), true);
    expect(list.contains(Task("task2")), false);
    expect(list.contains(Task("task3")), true);
    expect(list.contains(Task("task4")), false);
  });
}
