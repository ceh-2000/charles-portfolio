import 'package:flutter/material.dart';
import '../utils/background.dart';
import '../utils/navigation.dart';
import 'package:url_launcher/url_launcher.dart';

class DirectingPage extends StatelessWidget {
  DirectingPage({super.key});
  final Uri _urlFutureToday = Uri.parse(
    'https://www.youtube.com/watch?v=GOTPfDIZ4Uc?t=39m25s',
  );
  final Uri _urlLehmanTrilogy = Uri.parse(
    'https://studio.youtube.com/video/vWuS7UYfj2o/edit',
  );

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // IMPORTANT
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              children: [
                Flexible(flex: 1, child: Center(child: NavigationButtons())),
                Flexible(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                ),
                                child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                  child: Image.asset(
                                    'assets/images/directing_future_today.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 100),
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            SizedBox(
                              width: 180,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                ),
                                child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                  child: Image.asset(
                                    'assets/images/directing_lehman_trilogy.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),

                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                ),
                                child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                  child: Image.asset(
                                    'assets/images/directing_seagull.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 100),
                          ],
                        ),
                        SizedBox(height: 50),

                        Row(
                          children: [
                            SizedBox(width: 100),
                            SizedBox(
                              width: 180,
                              child: GestureDetector(
                                onTap: () async {
                                  final url = Uri.parse(
                                    "https://vimeo.com/649702788",
                                  );

                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(
                                      url,
                                      mode: LaunchMode.externalApplication,
                                    );
                                  } else {
                                    throw "Could not launch $url";
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4,
                                    ),
                                  ),
                                  child: AspectRatio(
                                    aspectRatio: 3 / 4,
                                    child: Image.asset(
                                      'assets/images/directing_tales_from_the_rift.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                ),
                                child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                  child: Image.asset(
                                    'assets/images/directing_war_of_worlds.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 100),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
