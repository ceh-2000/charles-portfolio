import 'package:flutter/material.dart';
import '../utils/background.dart';
import '../utils/navigation.dart';
import '../utils/youtube_playlist_player.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // IMPORTANT
        body: Center(
          child: Row(
            children: [
              Expanded(child: NavigationButtons()),
              Expanded(
                child: Padding(padding: EdgeInsetsGeometry.all(50),
                child: SimpleYoutubePlaylistPlayer(),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
