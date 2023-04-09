import 'package:flutter/material.dart';
import 'package:todo_app/ProjectData/project_color.dart';
import 'package:todo_app/ProjectData/project_text.dart';

import 'Home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        elevation: 0,
        color: ProjectColor().primaryColor,
      )),
      title: ProjectText().projectTitle,
      home: Home(),
    );
  }
}
