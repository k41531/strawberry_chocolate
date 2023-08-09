import 'package:flutter_test/flutter_test.dart';

// This is unit test fot to do list app

void main() {
  // Check added task is contained in the list
  test('Add task', () {
    final list = ToDoList();
    list.add(Task("task1"));
    expect(list, contains(Task("task1")));
  });
}
