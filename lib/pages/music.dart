import 'package:flutter/material.dart';
import '../utils/background.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // IMPORTANT
        body: Center(child: Text("Hello", style: TextStyle(color: Colors.white))),
      ),
    );
  }
}