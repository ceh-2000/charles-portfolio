import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class SimpleYoutubePlaylistPlayer extends StatefulWidget {
  const SimpleYoutubePlaylistPlayer({super.key});

  @override
  State<SimpleYoutubePlaylistPlayer> createState() =>
      _SimpleYoutubePlaylistPlayerState();
}

class _SimpleYoutubePlaylistPlayerState
    extends State<SimpleYoutubePlaylistPlayer> {
  late YoutubePlayerController _controller;

  // Your playlist: title + YouTube video ID
  final List<Map<String, String>> _videos = [
    {
      'title': 'Video 1',
      'id': 'FZRfgydmxzM',
    },
    {
      'title': 'Video 2',
      'id': 'p9G2bi4sxDc',
    },
    {
      'title': 'Video 3',
      'id': 'DQno2Ot5qe4',
    },
    {
      'title': 'Video 4',
      'id': 'D9-Ywiyb8Eo',
    },
    {
      'title': 'Video 5',
      'id': 'kvuwEjKZmCI',
    },
    {
      'title': 'Video 6',
      'id': 'Uxp9PlX7ul4',
    },
  ];

  int _currentIndex = 0;

  String get _currentTitle => _videos[_currentIndex]['title']!;
  String get _currentId => _videos[_currentIndex]['id']!;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _currentId,
      params: const YoutubePlayerParams(
        showFullscreenButton: true,
        playsInline: true,
      ),
    );
  }

  Future<void> _next() async {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _videos.length;
    });
    _controller.loadVideoById(videoId: _currentId);
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              _currentTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),

            // YouTube player
            AspectRatio(
              aspectRatio: 16 / 9,
              child: YoutubePlayer(
                controller: _controller,
                backgroundColor: Colors.black,
              ),
            ),
            const SizedBox(height: 16),

            // Next button row
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Next video',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  iconSize: 32,
                  icon: const Icon(Icons.arrow_forward),
                  color: Colors.lightBlueAccent,
                  onPressed: _next,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
