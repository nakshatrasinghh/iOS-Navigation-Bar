import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;

  const NewPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
          child: Center(
        child: Text(title,
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold)),
      )),
    );
  }
}
