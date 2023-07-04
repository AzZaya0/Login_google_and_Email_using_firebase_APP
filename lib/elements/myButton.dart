import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? ontapFunction;
  const MyButton({super.key, required this.ontapFunction});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontapFunction,
        child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )),
      ),
    );
  }
}
