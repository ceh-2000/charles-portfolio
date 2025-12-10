import 'package:flutter/material.dart';

import '../pages/directing.dart';
import '../pages/music.dart';
import '../pages/video.dart';
import '../pages/other.dart';
import '../pages/home.dart';
import 'circle_button.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.home),
          color: Colors.white,
          iconSize: 32,
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              PageRouteBuilder(
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
                pageBuilder: (_, __, ___) => const HomePage(),
                transitionsBuilder: (_, __, ___, child) =>
                    child, // no animation
              ),
              (route) => false, // clears backstack so you're truly "home"
            );
          },
        ),
        // ----------- DIRECTING ----------------
        Padding(
          padding: const EdgeInsets.all(12),
          child: Hero(
            tag: 'directing_button',
            child: CircleTextButton(
              text: 'Directing',
              icon: Icons.movie,
              backgroundColor: const Color(0xFF870000),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    reverseTransitionDuration: const Duration(
                      milliseconds: 500,
                    ),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        DirectingPage(),
                    transitionsBuilder: (_, __, ___, child) => child,
                  ),
                );
              },
            ),
          ),
        ),

        // ----------- MUSIC ----------------
        Padding(
          padding: const EdgeInsets.all(12),
          child: Hero(
            tag: 'music_button',
            child: CircleTextButton(
              text: 'Music',
              icon: Icons.music_note,
              backgroundColor: const Color(0xFF5400be),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    reverseTransitionDuration: const Duration(
                      milliseconds: 500,
                    ),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const MusicPage(),
                    transitionsBuilder: (_, __, ___, child) => child,
                  ),
                );
              },
            ),
          ),
        ),

        // ----------- VIDEO ----------------
        Padding(
          padding: const EdgeInsets.all(12),
          child: Hero(
            tag: 'video_button',
            child: CircleTextButton(
              text: 'Video',
              icon: Icons.video_library,
              backgroundColor: const Color(0xFF207800),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    reverseTransitionDuration: const Duration(
                      milliseconds: 500,
                    ),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const VideoPage(),
                    transitionsBuilder: (_, __, ___, child) => child,
                  ),
                );
              },
            ),
          ),
        ),

        // ----------- OTHER ----------------
        Padding(
          padding: const EdgeInsets.all(12),
          child: Hero(
            tag: 'other_button',
            child: CircleTextButton(
              text: 'Other',
              icon: Icons.bubble_chart,
              backgroundColor: const Color(0xFF93371d),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    reverseTransitionDuration: const Duration(
                      milliseconds: 500,
                    ),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const OtherPage(),
                    transitionsBuilder: (_, __, ___, child) => child,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
