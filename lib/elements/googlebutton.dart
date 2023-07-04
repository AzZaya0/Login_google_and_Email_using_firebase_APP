import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  void Function()? onpressed;
  GoogleButton({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child:
          IconButton(onPressed: onpressed, icon: Icon(Icons.login, size: 50)),
      height: 150,
      width: 150,
    ));
  }
}
