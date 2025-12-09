import 'package:flutter/material.dart';
import '../utils/background.dart';
import '../utils/navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class DirectingPage extends StatelessWidget {
  const DirectingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // IMPORTANT
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Center(child: NavigationButtons()),
              ),
Expanded(
                child: Text(
                  "directing here",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 96,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    letterSpacing: 3,
                  ),
                ),
              ),             ],
          ),
        ),
      ),
    );
  }
}