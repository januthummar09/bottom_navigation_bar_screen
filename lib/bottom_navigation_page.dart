import 'package:bottom_navigation_bar_screen/ab.dart';
import 'package:bottom_navigation_bar_screen/cd.dart';
import 'package:bottom_navigation_bar_screen/ef.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  List pages = [
    const Icon(
      Icons.call,
      size: 150,
    ),
    const Icon(
      Icons.camera,
      size: 150,
    ),
    const Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  List file = [const Ab(), const Cd(), const Ef()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        ],
      ),
      body: Center(child: file.elementAt(selectedIndex)),
    );
  }
}
