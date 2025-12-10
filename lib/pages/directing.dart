import 'package:flutter/material.dart';
import '../utils/navigation.dart';
import '../utils/clickable_image_link.dart';
import '../utils/app_scaffold.dart';

class DirectingPage extends StatelessWidget {
  DirectingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        child: Center(
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
                              child: ClickableImageLink(
                                imagePath:
                                    'assets/images/directing_lehman_trilogy.jpg',
                                url: 'https://youtu.be/vWuS7UYfj2o',
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
                              child: ClickableImageLink(
                                imagePath:
                                    'assets/images/directing_tales_from_the_rift.jpg',
                                url: 'https://vimeo.com/649702788',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),

                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              child: ClickableImageLink(
                                imagePath:
                                    'assets/images/directing_seagull.jpg',
                                url: '',
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
                              child: ClickableImageLink(
                                imagePath:
                                    'assets/images/directing_war_of_worlds.jpg',
                                url:
                                    'https://www.youtube.com/watch?v=XquIFZqwg54',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            SizedBox(
                              width: 180,
                              child: ClickableImageLink(
                                imagePath:
                                    'assets/images/directing_future_today.jpg',
                                url:
                                    'https://www.youtube.com/watch?v=GOTPfDIZ4Uc',
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
    );
  }
}
