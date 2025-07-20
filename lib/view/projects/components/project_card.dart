import 'package:flutter/material.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CardItem extends StatelessWidget {
  final ProjectModel project;

  const CardItem({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: EdgeInsets.only(
            top: 20,
            bottom: 60,
            right: isDesktop ? 60 : 20,
          ),
          decoration: BoxDecoration(
            color: bgColor,
            boxShadow: const [
              BoxShadow(color: g1Color, offset: Offset(0, -1), blurRadius: 5),
              BoxShadow(color: g2Color, offset: Offset(0, 1), blurRadius: 5),
            ],
            // gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   colors: [g1Color, g2Color],
            // ),
            border: Border.all(
              color: Colors.white.withOpacity(0.4),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  SizedBox(height: 10),
              Text(
                project.description,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Spacer(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      project.techUsed.isEmpty
                          ? Container()
                          : Text(
                            "Technologies Used",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 12,
                            ),
                          ),
                      SizedBox(height: 4),
                      Wrap(
                        children:
                            project.techUsed
                                .map(
                                  (e) => Container(
                                    margin: const EdgeInsets.all(0),
                                    width: 35,
                                    padding: const EdgeInsets.all(5),
                                    height: 35,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        "assets/images/$e${e == "isar" ? ".jpeg" : ".png"}",
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),

                  Text(
                    "More Info",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //!
                      if (project.androidLink != null) ...[
                        InkWell(
                          onTap: () {
                            launchUrlString(project.androidLink!);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/playstore.png",
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],

                      if (project.iosLink != null) ...[
                        InkWell(
                          onTap: () {
                            launchUrlString(project.iosLink!);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/appstore.png",
                              width: 30,
                              fit: BoxFit.fitHeight,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],

                      if (project.windowsLink != null) ...[
                        InkWell(
                          onTap: () {
                            launchUrlString(project.windowsLink!);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/windows.png",
                              width: 30,
                              fit: BoxFit.fill,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],

                      if (project.macosLink != null) ...[
                        InkWell(
                          onTap: () {
                            launchUrlString(project.macosLink!);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/macos.png",
                              width: 30,
                              fit: BoxFit.cover,
                              height: 30,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),
                      ],
                      if (project.gitLink != null) ...[
                        InkWell(
                          onTap: () {
                            launchUrlString(project.gitLink!);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/git.png",
                              width: 30,
                              fit: BoxFit.fitHeight,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        /// Title
        Positioned(
          top: 0,
          left: 10,
          child: Container(
            color: bgColor,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              project.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: isDesktop ? 0 : 10,
          right: isDesktop ? 0 : 0,
          child: Container(
            height: isDesktop ? 200 : 100,
            width: isDesktop ? 200 : 100,
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(isDesktop ? 60 : 30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(isDesktop ? 60 : 30),
              child: Image.asset(project.appPhotos ?? "", fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
