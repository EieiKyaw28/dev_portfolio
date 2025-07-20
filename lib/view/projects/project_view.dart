import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/projects/components/title_text.dart';
import 'components/projects_grid.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (Responsive.isLargeMobile(context))
          const SizedBox(height: defaultPadding),
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [g1Color, g2Color],
            ).createShader(bounds);
          },
          child: TitleText(prefix: '9+', title: 'Major Projects'),
        ),
        const SizedBox(height: 5),
        Responsive(
          desktop: ProjectGrid(crossAxisCount: 2),
          extraLargeScreen: ProjectGrid(crossAxisCount: 4),
          largeMobile: ProjectGrid(crossAxisCount: 1, ratio: 1.8),
          mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
          tablet: ProjectGrid(ratio: 1.4, crossAxisCount: 2),
        ),
      ],
    );
  }
}
