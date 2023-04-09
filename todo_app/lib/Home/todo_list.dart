import 'package:flutter/material.dart';
import 'package:todo_app/Home/todo_item.dart';

class TodoList extends StatefulWidget {
  TodoList({super.key, required this.todoList});
  final List todoList;
  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todoList.length,
      itemBuilder: (context, index) {
        return TodoItem(todoText: widget.todoList[index]);
      },
    );
  }
}
