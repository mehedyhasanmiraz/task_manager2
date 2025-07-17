import 'package:flutter/material.dart';

import '../style/style.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorWhite,
        body: Stack(
          children: [
            ScreenBackground(context),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 200, 60, 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start, // Ensure vertical alignment
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Image.asset(
                        "assets/images/Ostad.png",
                        height: 125,
                        width: 125,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 16), // slightly more spacing for balance
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Learn with",
                          style: const TextStyle(
                            fontSize: 50,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ).copyWith(color: colorGreen),
                        ),
                        const SizedBox(height: 0),
                        Text(
                          "Ostad",
                          style: const TextStyle(
                            fontSize: 62,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                          ).copyWith(color: colorGreen),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}