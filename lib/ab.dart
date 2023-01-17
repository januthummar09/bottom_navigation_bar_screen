import 'package:flutter/material.dart';

import 'common_widget/common_container.dart';

class Ab extends StatefulWidget {
  const Ab({Key? key}) : super(key: key);

  @override
  State<Ab> createState() => _AbState();
}

class _AbState extends State<Ab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
        Row(
            children: List.generate(
                5,
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
                  _buildTextWidget(text: "Demo Project", color: Colors.white),
            ),
          ),
        ),
      ],
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
