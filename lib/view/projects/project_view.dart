import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/components/tab_widget.dart';
import 'package:portfolio/view/projects/components/title_text.dart';
import 'components/projects_grid.dart';
import 'package:side_sheet/side_sheet.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (Responsive.isLargeMobile(context))
          const SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 10),
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [g1Color, g2Color],
                ).createShader(bounds);
              },
              child: TitleText(prefix: '9+', title: 'Major Projects'),
            ),
            SizedBox(),
          ],
        ),
        const SizedBox(height: 5),
        Responsive(
          desktop: ProjectGrid(crossAxisCount: 3, projectLength: 6),
          extraLargeScreen: ProjectGrid(crossAxisCount: 3, projectLength: 6),
          largeMobile: ProjectGrid(
            crossAxisCount: 1,
            ratio: 1.8,
            projectLength: 2,
          ),
          mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5, projectLength: 2),
          tablet: ProjectGrid(ratio: 1.4, crossAxisCount: 2, projectLength: 4),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(20),
          child: InkWell(
            onTap: () {
              SideSheet.right(
                sheetColor: bgColor,
                width: MediaQuery.of(context).size.width,
                body: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Obx(() {
                            return CommonTabWidget(
                              tabs: const [
                                "Work Projects",
                                "Personal Projects",
                              ],
                              selectedValue: controller.selectedIndex.value,
                              onTap: controller.onSelected,
                            );
                          }),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                controller.onSelected(0);
                              },
                              child: Icon(Icons.close, color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      Expanded(
                        child: Responsive(
                          desktop: ProjectGrid(
                            crossAxisCount: 3,
                            needScroll: true,
                          ),
                          extraLargeScreen: ProjectGrid(
                            crossAxisCount: 3,
                            needScroll: true,
                          ),
                          largeMobile: ProjectGrid(
                            crossAxisCount: 1,
                            ratio: 1.8,
                            needScroll: true,
                          ),
                          mobile: ProjectGrid(
                            crossAxisCount: 1,
                            ratio: 1.5,
                            needScroll: true,
                          ),
                          tablet: ProjectGrid(
                            ratio: 1.4,
                            crossAxisCount: 1,
                            needScroll: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                context: context,
              );
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: bgColor,
                boxShadow: const [
                  BoxShadow(
                    color: g1Color,
                    offset: Offset(0, -1),
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    color: g2Color,
                    offset: Offset(0, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "View All Projects",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.double_arrow_rounded, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
