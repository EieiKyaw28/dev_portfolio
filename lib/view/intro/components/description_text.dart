import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          'I am a Mobile Developer with over 2 years of experience delivering high-quality applications \nacross native Android (Java, Kotlin, Jetpack Compose) and cross-platform frameworks (Flutter, Dart). \nMy expertise spans UI/UX design, database management, API integration, and mobile security best practices.\nI’m passionate about writing clean, maintainable code and continuously exploring new technologies to stay ahead in the field.\nWhether working independently or collaborating with a team,\nI’m committed to delivering seamless, user-centered mobile experiences that make a difference.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
