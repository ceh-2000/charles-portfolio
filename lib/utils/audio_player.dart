import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SimpleAudioPlayerPage extends StatefulWidget {
  const SimpleAudioPlayerPage({super.key});

  @override
  State<SimpleAudioPlayerPage> createState() => _SimpleAudioPlayerPageState();
}

class _SimpleAudioPlayerPageState extends State<SimpleAudioPlayerPage> {
  final AudioPlayer _player = AudioPlayer();

  // Your playlist: title + asset path
  final List<Map<String, String>> _tracks = [
    {
      'title': '[AMBIENT] Hotbox Water',
      'file': 'audio/[AMBIENT] Hotbox Water.mp3',
    },
    {
      'title': '[AMBIENT] Sort of Like Dying',
      'file': 'audio/[AMBIENT] Sort of Like Dying.mp3',
    },
    {
      'title': '[MUSICAL THEATER] Witch Fight',
      'file': 'audio/[MUSICAL THEATER] Witch Fight.mp3',
    },
    {
      'title': '[ROCK] Swiss Cheese Man',
      'file': 'audio/[ROCK] Swiss Cheese Man.mp3',
    },
    {
      'title':
          '[SINGER SONGWRITER] You Think Thats Bad_ Really_ Wait Until You Check the Sink!',
      'file':
          'audio/[SINGER SONGWRITER] You Think Thats Bad_ Really_ Wait Until You Check the Sink!.mp3',
    },
    {
      'title': '[SOUNDSCAPE] Infernø - Intake Demo',
      'file': 'audio/[SOUNDSCAPE] Infernø - Intake Demo.mp3',
    },
    {
      'title': '[VOCALS_NOISE] Surveillance - Whispers',
      'file': 'audio/[VOCALS_NOISE] Surveillance - Whispers.mp3',
    },
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentTrack();
  }

  Future<void> _loadCurrentTrack({bool autoPlay = false}) async {
    final path = _tracks[_currentIndex]['file']!;
    await _player.stop();
    await _player.setSource(AssetSource(path));
    if (autoPlay) {
      await _player.resume();
    }
  }

  Future<void> _play() async {
    await _player.resume();
  }

  Future<void> _pause() async {
    await _player.pause();
  }

  Future<void> _next() async {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _tracks.length;
    });
    await _loadCurrentTrack(autoPlay: true);
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentTitle = _tracks[_currentIndex]['title']!;

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
            // Track name
            Text(
              currentTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),

            // Controls
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  iconSize: 32,
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.greenAccent,
                  onPressed: _play,
                ),
                const SizedBox(width: 12),
                IconButton(
                  iconSize: 32,
                  icon: const Icon(Icons.pause),
                  color: Colors.amber,
                  onPressed: _pause,
                ),
                const SizedBox(width: 12),
                IconButton(
                  iconSize: 32,
                  icon: const Icon(Icons.skip_next),
                  color: Colors.redAccent,
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
