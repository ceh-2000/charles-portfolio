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
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const CircleBorder()),
          padding: MaterialStateProperty.all(EdgeInsets.zero),

          // Background hover color
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.hovered)) {
                return backgroundColor.withOpacity(0.9);
              }
              return backgroundColor;
            },
          ),

          // 🌟 WHITE SHADOW ON HOVER 🌟
          elevation: MaterialStateProperty.resolveWith<double>(
            (states) {
              if (states.contains(MaterialState.hovered)) return 20; // glow strength
              return 6; // normal slight elevation
            },
          ),

          shadowColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.black54; // default shadow
            },
          ),

          animationDuration: const Duration(milliseconds: 150),
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
