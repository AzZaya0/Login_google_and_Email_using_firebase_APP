import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controltext = TextEditingController();

  MyTextField({super.key, required this.controltext});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: controltext,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
        ),
      )),
    );
  }
}
