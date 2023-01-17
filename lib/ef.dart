import 'package:flutter/material.dart';

class Ef extends StatefulWidget {
  const Ef({Key? key}) : super(key: key);

  @override
  State<Ef> createState() => _EfState();
}

class _EfState extends State<Ef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
