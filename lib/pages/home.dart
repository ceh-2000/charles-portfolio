import 'package:flutter/material.dart';
import '../utils/circle_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
CircleTextButton(
        text: 'Play',
        icon: Icons.play_arrow,
        backgroundColor: Colors.red,
        onPressed: () {
          print("Pressed!");
        },
      ),
          CircleTextButton(
        text: 'Play',
        icon: Icons.play_arrow,
        backgroundColor: Colors.red,
        onPressed: () {
          print("Pressed!");
        },
      ),],),
Row(mainAxisAlignment: MainAxisAlignment.center,
children: [
  CircleTextButton(
        text: 'Play',
        icon: Icons.play_arrow,
        backgroundColor: Colors.red,
        onPressed: () {
          print("Pressed!");
        },
      ), CircleTextButton(
        text: 'Play',
        icon: Icons.play_arrow,
        backgroundColor: Colors.red,
        onPressed: () {
          print("Pressed!");
        },
      ),
], ), CircleTextButton(
        text: 'Play',
        icon: Icons.play_arrow,
        backgroundColor: Colors.red,
        onPressed: () {
          print("Pressed!");
        },
      ),

        ],
      )
      
    );
  }
}
