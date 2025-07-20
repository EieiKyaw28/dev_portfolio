import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/projects/components/project_card.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  final int? projectLength;
  ProjectGrid({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 1.3,
    this.projectLength,
  });
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemCount: projectLength ?? ProjectModel.projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 1,
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
        mainAxisExtent: isDesktop ? 326 : 370,
        mainAxisSpacing: 1,
      ),
      itemBuilder: (context, index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(
            vertical: defaultPadding,
            horizontal: defaultPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),

            boxShadow: [],
          ),
          child: CardItem(project: ProjectModel.projects[index]),
        );
      },
    );
  }
}
