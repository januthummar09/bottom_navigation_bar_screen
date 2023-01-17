import 'package:flutter/material.dart';

class ThiredScreen extends StatefulWidget {
  const ThiredScreen({Key? key}) : super(key: key);

  @override
  State<ThiredScreen> createState() => _ThiredScreenState();
}

class _ThiredScreenState extends State<ThiredScreen> {
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
