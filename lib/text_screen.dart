import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  String a = 'g';
  
  bool isIcon = true;
  @override
  Widget build(BuildContext context) {
    // var name=Student.name();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.amber,
        // width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(isIcon ? "jk" : 'g'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("dataaa"),
              ],
            ),
            ElevatedButton(
              onPressed: abc,
              child: const Text("text"),
            ),
            
            
          ],
        ),
      ),
    );
  }
   void abc() {
    setState(() {
      isIcon = !isIcon;
    });
  }
 
}
