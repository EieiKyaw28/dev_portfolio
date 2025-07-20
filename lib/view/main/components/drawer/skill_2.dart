import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/projects/components/title_text.dart';

class SkillModel {
  final String name;
  final String slug;
  final String? category;
  final bool isLearning;
  final String icon;

  SkillModel({
    required this.name,
    required this.slug,
    required this.category,
    this.isLearning = false,
    required this.icon,
  });
}

List<SkillModel> stateManagement = [
  SkillModel(
    name: "Riverpod",
    slug: "riverpod",
    category: "state_management",
    icon: "assets/images/riverpod.png",
  ),
  SkillModel(
    name: "Bloc",
    slug: "bloc",
    category: "state_management",
    icon: "assets/images/bloc.png",
  ),
  SkillModel(
    name: "GetX",
    slug: "getx",
    category: "state_management",
    icon: "assets/images/getx.png",
  ),
  SkillModel(
    name: "Jetpack Comppse",
    slug: "jetpack",
    category: "state_management",
    icon: "assets/images/jetpack.png",
  ),
];

List<SkillModel> database = [
  SkillModel(
    name: "Isar",
    slug: "isar",
    category: "database",
    icon: "assets/images/isar.jpeg",
  ),

  SkillModel(
    name: "MongoDB",
    slug: "mongodb",
    category: "database",
    icon: "assets/images/mongodb.png",
  ),
  SkillModel(
    name: "SQLite",
    slug: "sqlite",
    category: "database",
    icon: "assets/images/sqlite.png",
  ),
  SkillModel(
    name: "Hive",
    slug: "hive",
    category: "database",
    icon: "assets/images/hive.jpeg",
  ),
  SkillModel(
    name: "Cloud Firestore",
    slug: "firebase",
    category: "database",
    icon: "assets/images/firestore.png",
  ),
];

List<SkillModel> development = [
  //! other
  SkillModel(
    name: "Android Studio",
    slug: "android_studio",
    category: "other",
    icon: "assets/images/androidstudio.png",
  ),
  SkillModel(
    name: "Xcode",
    slug: "xcode",
    category: "other",
    icon: "assets/images/xcode.png",
  ),
  SkillModel(
    name: "IntelliJ",
    slug: "intellij",
    category: "other",
    icon: "assets/images/intellij.png",
  ),

  SkillModel(
    name: "Visual Studio Code",
    slug: "vscode",
    category: "other",
    icon: "assets/images/vscode.png",
  ),

  SkillModel(
    name: "Play Store",
    slug: "Google Play Store",
    category: "other",
    icon: "assets/images/playstore.png",
  ),
  SkillModel(
    name: "App Store",
    slug: "Apple App Store",
    category: "other",
    icon: "assets/images/appstore.png",
  ),
];

List<SkillModel> other = [
  SkillModel(
    name: "ShoreBird",
    slug: "shorebird",
    category: "other",
    icon: "assets/images/shorebird.jpeg",
  ),
  SkillModel(
    name: "Mockito",
    slug: "mockito",
    category: "other",
    icon: "assets/images/mockito.png",
  ),
  SkillModel(
    name: "Sentry",
    slug: "sentry",
    category: "other",
    icon: "assets/images/sentry.png",
  ),

  SkillModel(
    name: "Git",
    slug: "git",
    category: "other",
    icon: "assets/images/git.png",
  ),
  SkillModel(
    name: "Postman",
    slug: "postman",
    category: "other",
    icon: "assets/images/postman.png",
  ),
  SkillModel(
    name: "Figma",
    slug: "figma",
    category: "other",
    icon: "assets/images/figma.png",
  ),
];

List<SkillModel> backend = [
  //! backend
  SkillModel(
    name: "Supabase",
    slug: "supabase",
    category: "backend",
    isLearning: true,
    icon: "assets/images/supabase.png",
  ),
  SkillModel(
    name: "Realm",
    slug: "realm",
    category: "backend",
    icon: "assets/images/realm.png",
  ),
  SkillModel(
    name: "Firebase",
    slug: "firebase",
    category: "backend",
    isLearning: true,
    icon: "assets/images/firebase.png",
  ),
];

class Skill2 extends StatefulWidget {
  @override
  State<Skill2> createState() => _Skill2State();
}

class _Skill2State extends State<Skill2> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return isDesktop
        ? SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Center(
                  child: Text(
                    'My Expertise in Flutter and Mobile Development',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: _skillComponent(
                            stateManagement,
                            Colors.pink.shade400,
                            "State Management",
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: _skillComponent(
                        database,
                        Colors.purple.shade200,
                        "Database",
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: _skillComponent(
                            backend,
                            Colors.white,
                            "Backend",
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: _skillComponent(
                        development,
                        Colors.amber,
                        "Development",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: _skillComponent(
                        other,
                        Colors.blue.shade200,
                        "Other",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        : Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [g1Color, g2Color],
                  ).createShader(bounds);
                },
                child: Text(
                  'My Expertise in Flutter and Mobile Development',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 10),

              SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: _skillComponent(
                                stateManagement,
                                Colors.pink.shade400,
                                "State Management",
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: _skillComponent(
                                backend,
                                Colors.white,
                                "Backend",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: _skillComponent(
                                database,
                                Colors.purple.shade200,
                                "Database",
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: _skillComponent(
                                development,
                                Colors.amber,
                                "Development",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: _skillComponent(
                                other,
                                Colors.blue.shade200,
                                "Other",
                              ),
                            ),
                          ),
                          Expanded(child: SizedBox(width: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }

  Widget _skillComponent(List<SkillModel> items, Color color, String title) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 10 * value),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: color.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 240,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      for (var x in items)
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Tooltip(
                            message: x.name,
                            child: Image.asset(x.icon, height: 50, width: 50),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
