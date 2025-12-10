import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeLink extends StatefulWidget {
  final String url;

  const ResumeLink({super.key, required this.url});

  @override
  State<ResumeLink> createState() => _ResumeLinkState();
}

class _ResumeLinkState extends State<ResumeLink> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    const normalColor = Color(0xFF7EC8FF);
    const hoverColor = Colors.white;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),

      child: GestureDetector(
        onTap: () async {
          final uri = Uri.parse(widget.url);
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        },

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.only(bottom: 1), // tiny spacing above underline
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              // the text
              Text(
                "Resume",
                style: TextStyle(
                  color: _hovering ? hoverColor : normalColor,
                  fontSize: 20,
                ),
              ),

              // custom underline
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 1.5,
                  color: _hovering ? hoverColor : normalColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
