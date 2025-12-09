import 'package:flutter/material.dart';
import '../utils/circle_button.dart';
import 'package:marquee/marquee.dart';
import '../utils/background.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Marquee(
              text: 'CHARLES HEINBAUGH',
              style: GoogleFonts.bebasNeue(fontSize: 96, fontWeight: FontWeight.bold, color: Colors.amber),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              blankSpace: 30.0,
              velocity: 50.0,
              pauseAfterRound: Duration(seconds: 1),
              startPadding: 10.0,
              accelerationDuration: Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
            ),
          ),
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
                backgroundColor: Colors.yellow,
                onPressed: () {
                  print("Pressed!");
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleTextButton(
                text: 'Play',
                icon: Icons.play_arrow,
                backgroundColor: Colors.green,
                onPressed: () {
                  print("Pressed!");
                },
              ),
              CircleTextButton(
                text: 'Play',
                icon: Icons.play_arrow,
                backgroundColor: Colors.blue,
                onPressed: () {
                  print("Pressed!");
                },
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
