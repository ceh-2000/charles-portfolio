import 'package:flutter/material.dart';
import '../utils/circle_button.dart';
import 'package:marquee/marquee.dart';
import '../utils/background.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Marquee(
                  text: 'CHARLES HEINBAUGH',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 96,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    letterSpacing: 3,
                  ),
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
              SizedBox(height: 20.0),
              Text(
                "Director - Artist - Performer - Educator",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  color: Colors.amber,
                  letterSpacing: 5,
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 900, // ← make this whatever size you want
                  ),
                  child: Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                    margin: const EdgeInsets.all(32),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 4,
                                    ),
                                  ),
                                  child: AspectRatio(
                                    aspectRatio: 3 / 4,
                                    child: Image.asset(
                                      'assets/images/charles.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 24),
                              // RIGHT: WELCOME + TEXT
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // WELCOME TITLE
                                    Text(
                                      'WELCOME',
                                      style: GoogleFonts.anton(
                                        fontSize: 36,
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: 4,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    // UNDERLINE
                                    Container(
                                      height: 3,
                                      width: 160,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(height: 18),

                                    // BODY TEXT (ITALIC, RIGHT-ALIGNED LIKE YOUR MOCK)
                                    Text(
                                      'My name is Charles Heinbaugh, and I make lots of things that intend either to tell stories or make audiences feel something new.\n\n'
                                      'I center empathy, experimentation and collaboration in every project I work on, even (and especially) the dumb, bullshit ones! \n\n'
                                      'Originally from Springfield, Virginia, I am studying to complete my Bachelor of Arts in Directing with the International Performance Ensemble.',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic,
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(12),child: CircleTextButton(
                    text: 'Directing',
                    icon: Icons.movie,
backgroundColor: const Color(0xFF870000),
                    onPressed: () {
                      print("Pressed!");
                    },
                  )),
                  Padding(
                      padding: const EdgeInsets.all(12),child: CircleTextButton(
                    text: 'Music',
                    icon: Icons.music_note,
backgroundColor: const Color(0xFF5400be),
                    onPressed: () {
                      print("Pressed!");
                    },
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(12),child: CircleTextButton(
                    text: 'Video',
                    icon: Icons.video_library,
backgroundColor: const Color(0xFF207800),
                    onPressed: () {
                      print("Pressed!");
                    },
                  )),
                  Padding(
                      padding: const EdgeInsets.all(12),child: CircleTextButton(
                    text: 'Other',
                    icon: Icons.bubble_chart,
backgroundColor: const Color(0xFF93371d),
                    onPressed: () {
                      print("Pressed!");
                    },
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
