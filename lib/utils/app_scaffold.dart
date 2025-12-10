import 'package:flutter/material.dart';
import 'background.dart';
import 'resume_link.dart';

class AppScaffold extends StatelessWidget {
  final Widget child; // main page content

  const AppScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(child: child),

            // ---- FOOTER SECTION ----
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        "charles.heinbaugh@gmail.com",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  ResumeLink(
                    url:
                        "https://docs.google.com/document/d/1QtSKhbT4H6Fdsr5HjmScadmgZRsbQHTzsOkNMOpg2-M/edit?tab=t.0",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
