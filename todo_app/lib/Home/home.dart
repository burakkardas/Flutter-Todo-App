import 'package:flutter/material.dart';
import 'package:todo_app/Home/todo_input.dart';
import 'package:todo_app/Home/todo_item.dart';
import 'package:todo_app/Home/todo_list.dart';
import 'package:todo_app/ProjectData/project_text.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController inputController = TextEditingController();

  List todoList = [
    "Burak Kardaş",
  ];

  @override
  Widget build(BuildContext context) {
    return _Scaffold();
  }

  Scaffold _Scaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectText().appbarTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20) +
            EdgeInsets.only(top: 20),
        child: Column(
          children: [
            TodoInput(inputController: inputController),
            Expanded(
                child: TodoList(
              todoList: todoList,
            )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    todoList.add(inputController.value.text);
                    inputController.clear();
                  });
                },
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
