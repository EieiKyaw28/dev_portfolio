import 'package:flutter/material.dart';
import 'package:portfolio/res/constants.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding * 9,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder:
            (context, value, child) => Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.black,
                        color: Colors.deepPurpleAccent,
                        value: value,
                      ),
                    ),
                    const SizedBox(width: 10),

                    Text(
                      '${(value * 100).toInt()}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.pink,
                            blurRadius: 10,
                            offset: Offset(2, 2),
                          ),
                          Shadow(
                            color: Colors.blue,
                            blurRadius: 10,
                            offset: Offset(-2, -2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding / 2),
                
                Text(
                  'Welcome to my portfolio',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.pink,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                      Shadow(
                        color: Colors.blue,
                        blurRadius: 10,
                        offset: Offset(-2, -2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
