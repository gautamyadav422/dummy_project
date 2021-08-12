import 'package:flutter/material.dart';

class Mysetting extends StatelessWidget {
  const Mysetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        centerTitle: true,
      ),
      body: Material(
        child: Center(
            child: Text(
          "Under Construction page",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
