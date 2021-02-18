import 'package:flutter/material.dart';

class MyPhoto extends StatelessWidget {
  const MyPhoto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Image.network("https://picsum.photos/370/200"),
      )),
    );
  }
}
