import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final Color? isColor;
  final dynamic isText;
  const CommonContainer({Key? key, this.isColor, this.isText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 50,
        width: 50,
        color: isColor ?? Colors.amber,
        child: isText ?? const Text("g"),
      ),
    );
  }
}
