import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(45 / 360),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
              children: List.generate(
                  7,
                  (index) => CircleAvatar(
                        backgroundColor: index == 0
                            ? Colors.red
                            : index == 1
                                ? Colors.amber
                                : Colors.black,
                        child: Text(index == 0
                            ? "A"
                            : index == 1
                                ? "B"
                                : "C"),
                      ))),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.indigo,
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child:
                    _buildTextWidget(text: "Demo Project", color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  _buildTextWidget({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
