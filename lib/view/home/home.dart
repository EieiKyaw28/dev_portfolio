import 'package:flutter/material.dart';
import 'package:portfolio/view/intro/introduction.dart';
import 'package:portfolio/view/main/components/drawer/about.dart';
import 'package:portfolio/view/main/components/drawer/about_page.dart';
import 'package:portfolio/view/main/components/drawer/skill_2.dart';
import 'package:portfolio/view/main/main_view.dart';
import 'package:portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(
      pages: [const Introduction(), AboutPage(), ProjectsView(), Skill2()],
    );
  }
}
