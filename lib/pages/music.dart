import 'package:charles_portfolio/utils/app_scaffold.dart';
import 'package:flutter/material.dart';
import '../utils/navigation.dart';
import '../utils/audio_player.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Scaffold(
        backgroundColor: Colors.transparent, // IMPORTANT
        body: Center(
          child: Row(
            children: [
              Expanded(child: NavigationButtons()),
              Expanded(child: SimpleAudioPlayerPage()),
            ],
          ),
        ),
      ),
    );
  }
}
