import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ClickableImageLink extends StatefulWidget {
  final String imagePath;   // image asset path
  final String url;         // external link

  const ClickableImageLink({
    super.key,
    required this.imagePath,
    required this.url,
  });

  @override
  State<ClickableImageLink> createState() => _ClickableImageLinkState();
}

class _ClickableImageLinkState extends State<ClickableImageLink> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,     // pointer cursor on hover
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),

      child: GestureDetector(
        onTap: () async {
          final Uri uri = Uri.parse(widget.url);

          await launchUrl(uri, mode: LaunchMode.externalApplication);
        },

        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 150),
          opacity: _hovering ? 0.85 : 1.0,

          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: _hovering ? Colors.amber : Colors.white,
                width: 4,
              ),
            ),
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


