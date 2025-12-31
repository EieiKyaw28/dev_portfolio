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
  final bool? needScroll;

  ProjectGrid({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 1.3,
    this.projectLength,
    this.needScroll,
  });
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Obx(() {
      final projects = controller.filteredProjects;

      return GridView.builder(
        physics:
            (needScroll == true) ? null : const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: projectLength ?? projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 1,
          crossAxisCount: 3,
          childAspectRatio: ratio,
          mainAxisExtent: isDesktop ? 380 : 340,
          mainAxisSpacing: 1,
        ),
        itemBuilder: (context, index) {
          final project = projects[index];

          return MouseRegion(
            onEnter: (_) => controller.onHover(index),
            onExit: (_) => controller.onExit(),
            child: Obx(() {
              final isHovered = controller.hoveredIndex.value == index;

              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                transform:
                    isHovered
                        ? (Matrix4.identity()..scale(1.05))
                        : Matrix4.identity(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow:
                      isHovered
                          ? [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ]
                          : [],
                ),
                child: CardItem(project: project),
              );
            }),
          );
        },
      );
    });
  }
}
