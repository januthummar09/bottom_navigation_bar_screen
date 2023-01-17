import 'package:flutter/material.dart';

class Cd extends StatefulWidget {
  const Cd({Key? key}) : super(key: key);

  @override
  State<Cd> createState() => _CdState();
}

class _CdState extends State<Cd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          color: Colors.pink,
        ),
      ),
    );
  }
}
