import 'package:flutter/material.dart';
import 'package:todo_app/ProjectData/project_color.dart';
import 'package:todo_app/ProjectData/project_margin.dart';
import 'package:todo_app/ProjectData/project_radius.dart';
import 'package:todo_app/ProjectData/project_size.dart';

class TodoItem extends StatelessWidget {
  TodoItem({super.key, required this.todoText});
  String? todoText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ProjectSize().todoItemHeight,
      margin: ProjectMargin().vertical,
      decoration: _TodoItemDecoration(),
      alignment: Alignment.center,
      child: Text(
        '$todoText',
        style: _TodoTextStyle(),
      ),
    );
  }

  TextStyle _TodoTextStyle() {
    return TextStyle(
        color: ProjectColor().todoTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w500);
  }

  BoxDecoration _TodoItemDecoration() {
    return BoxDecoration(
        color: ProjectColor().todoItemBgColor,
        borderRadius: ProjectRadius.allCornerRadius);
  }
}
