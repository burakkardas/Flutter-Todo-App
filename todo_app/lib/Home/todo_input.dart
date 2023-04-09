import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoInput extends StatelessWidget {
  TodoInput({super.key, required this.inputController});
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: inputController,
      ),
    );
  }
}
