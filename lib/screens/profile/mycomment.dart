import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:took/assets/colors/color.dart';

class Mycomment extends StatefulWidget {
  const Mycomment({super.key});

  @override
  State<Mycomment> createState() => _MycommentState();
}

class _MycommentState extends State<Mycomment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mycomment'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('dsvksdvjksd')
          ],
        ),
      ),
    );
  }
}
