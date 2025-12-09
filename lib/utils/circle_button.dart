import 'package:flutter/material.dart';

class CircleTextButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double size;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const CircleTextButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.size = 128,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          backgroundColor: backgroundColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 36, color: textColor),
              const SizedBox(height: 4),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
