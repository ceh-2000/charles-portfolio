import 'package:flutter/material.dart';
import '../utils/background.dart';
import '../utils/navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

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
                                child: Image.asset(
                                  'assets/images/visual_1.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_2.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_3.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_4.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_5.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_6.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_7.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_8.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_9.jpg',
                                  fit: BoxFit.cover,
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
                                child: Image.asset(
                                  'assets/images/visual_10.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
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
