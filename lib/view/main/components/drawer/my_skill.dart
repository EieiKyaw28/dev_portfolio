import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.percentage,
    required this.title,
    this.image,
  });
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(image!, height: 15, width: 15, fit: BoxFit.cover),
                  const SizedBox(width: 5),
                  Text(title, style: const TextStyle(color: Colors.white)),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(height: defaultPadding / 2),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Flutter',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          title: 'Dart',
          image: 'assets/icons/dart.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          title: 'Firebase',
          image: 'assets/icons/firebase.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          title: 'Sqlite',
          image: 'assets/icons/dart.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'Responsive Design',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          title: 'Clean Architecture',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Bloc',
          image: 'assets/icons/bloc.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.93,
          title: 'Getx',
          image: 'assets/icons/dart.png',
        ),
      ],
    );
  }
}

class SkillWebDesigner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Canvas lines
            CustomPaint(size: Size(300, 300), painter: LinePainter()),

            // Center Circle
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                "State Management",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[800],
                ),
              ),
            ),

            // Skills (Positioned around circle)
            Positioned(
              top: 10,
              right: 10,
              child: SkillChip("HTML & CSS", 70, Colors.orange),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: SkillChip("JavaScript", 60, Colors.deepOrange),
            ),
            Positioned(
              right: 30,
              bottom: 80,
              child: SkillChip("PHP", 50, Colors.pink),
            ),
            Positioned(bottom: 10, child: SkillChip("MySQL", 10, Colors.teal)),
            Positioned(
              right: 40,
              bottom: 80,
              child: SkillChip("Photoshop", 40, Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

// SkillChip Widget
class SkillChip extends StatelessWidget {
  final String title;
  final int percent;
  final Color color;

  const SkillChip(this.title, this.percent, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "$title (${percent}%)",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Draw lines from center to each skill
class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white70
          ..strokeWidth = 2;

    final center = Offset(size.width / 2, size.height / 2);

    // Example end points — tweak these for precise line alignment
    final points = [
      Offset(center.dx, 20), // Top
      Offset(size.width - 20, center.dy - 50), // Top Right
      Offset(size.width - 20, center.dy + 50), // Bottom Right
      Offset(center.dx, size.height - 20), // Bottom
      Offset(20, center.dy + 50), // Bottom Left
    ];

    for (var point in points) {
      canvas.drawLine(center, point, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
