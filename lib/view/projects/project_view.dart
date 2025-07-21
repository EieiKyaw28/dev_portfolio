import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:portfolio/view%20model/responsive.dart';
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

            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: InkWell(
            //     onTap: () {
            //       SideSheet.right(
            //         sheetColor: bgColor,
            //         width: MediaQuery.of(context).size.width,
            //         body: SafeArea(
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   SizedBox(),
            //                   ShaderMask(
            //                     shaderCallback: (bounds) {
            //                       return LinearGradient(
            //                         colors: [g1Color, g2Color],
            //                       ).createShader(bounds);
            //                     },
            //                     child: TitleText(
            //                       prefix: '',
            //                       title: 'All Projects',
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding: const EdgeInsets.all(10),
            //                     child: InkWell(
            //                       onTap: () {
            //                         Navigator.pop(context);
            //                       },
            //                       child: Icon(Icons.close, color: Colors.red),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Expanded(
            //                 child: Responsive(
            //                   desktop: ProjectGrid(crossAxisCount: 2),
            //                   extraLargeScreen: ProjectGrid(crossAxisCount: 4),
            //                   largeMobile: ProjectGrid(
            //                     crossAxisCount: 1,
            //                     ratio: 1.8,
            //                   ),
            //                   mobile: ProjectGrid(
            //                     crossAxisCount: 1,
            //                     ratio: 1.5,
            //                   ),
            //                   tablet: ProjectGrid(
            //                     ratio: 1.4,
            //                     crossAxisCount: 2,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         context: context,
            //       );
            //     },
            //     child: Text(
            //       "View All",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 18,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
        const SizedBox(height: 5),
        Responsive(
          desktop: ProjectGrid(crossAxisCount: 2, projectLength: 4),
          extraLargeScreen: ProjectGrid(crossAxisCount: 2, projectLength: 4),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          ShaderMask(
                            shaderCallback: (bounds) {
                              return LinearGradient(
                                colors: [g1Color, g2Color],
                              ).createShader(bounds);
                            },
                            child: TitleText(prefix: '', title: 'All Projects'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close, color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Responsive(
                          desktop: ProjectGrid(crossAxisCount: 2),
                          extraLargeScreen: ProjectGrid(crossAxisCount: 2),
                          largeMobile: ProjectGrid(
                            crossAxisCount: 1,
                            ratio: 1.8,
                          ),
                          mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
                          tablet: ProjectGrid(ratio: 1.4, crossAxisCount: 2),
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
