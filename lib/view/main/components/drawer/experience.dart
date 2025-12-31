import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/projects/components/title_text.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [g1Color, g2Color],
              ).createShader(bounds);
            },
            child: TitleText(prefix: '', title: 'My Work Experiences'),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
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

                    border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (Responsive.isDesktop(context))
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 60,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,

                                  // physics: NeverScrollableScrollPhysics(),
                                  itemCount: works.length,
                                  itemBuilder: (context, index) {
                                    final work = works[index];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      onTap: () {
                                        selectedIndex = index;
                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            boxShadow:
                                                selectedIndex == index
                                                    ? const [
                                                      BoxShadow(
                                                        color: g1Color,
                                                        offset: Offset(0, -1),
                                                        blurRadius: 2,
                                                      ),
                                                      BoxShadow(
                                                        color: g2Color,
                                                        offset: Offset(0, 1),
                                                        blurRadius: 2,
                                                      ),
                                                    ]
                                                    : null,
                                            color: bgColor,
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      work.image,
                                                      height:
                                                          Responsive.isMobile(
                                                                context,
                                                              )
                                                              ? 70
                                                              : 40,
                                                      width:
                                                          Responsive.isMobile(
                                                                context,
                                                              )
                                                              ? 70
                                                              : 40,
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      work.name,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Tooltip(
                                                      message: work.ref,
                                                      child: Icon(
                                                        Icons.info,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      else
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 100,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),

                                  itemCount: works.length,
                                  itemBuilder: (context, index) {
                                    final work = works[index];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      onTap: () {
                                        selectedIndex = index;
                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          // width: 200,
                                          decoration: BoxDecoration(
                                            boxShadow:
                                                selectedIndex == index
                                                    ? const [
                                                      BoxShadow(
                                                        color: g1Color,
                                                        offset: Offset(0, -1),
                                                        blurRadius: 2,
                                                      ),
                                                      BoxShadow(
                                                        color: g2Color,
                                                        offset: Offset(0, 1),
                                                        blurRadius: 2,
                                                      ),
                                                    ]
                                                    : null,
                                            color: bgColor,
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  work.image,
                                                  height:
                                                      Responsive.isMobile(
                                                            context,
                                                          )
                                                          ? 70
                                                          : 40,
                                                  width:
                                                      Responsive.isMobile(
                                                            context,
                                                          )
                                                          ? 70
                                                          : 40,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (Responsive.isMobile(context)) ...[
                        SizedBox(height: 12),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                works[selectedIndex].name,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Tooltip(
                              message: works[selectedIndex].ref,
                              child: Icon(Icons.info, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                      SizedBox(height: 12),
                      Text(
                        works[selectedIndex].role,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(works[selectedIndex].year),
                      SizedBox(height: 10),

                      for (var x in works[selectedIndex].exp)
                        Text(x, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              if (!Responsive.isMobile(context))
                Lottie.asset('assets/jsons/work.json'),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class WorkExperienceModel {
  final String name;
  final String image;
  final String ref;
  final String role;
  final String year;
  final List<String> exp;

  WorkExperienceModel({
    required this.name,
    required this.image,
    required this.ref,
    required this.exp,
    required this.role,
    required this.year,
  });
}

List<WorkExperienceModel> works = [
  WorkExperienceModel(
    name: "7th Computing Co.,Ltd.",
    image: 'assets/images/seven_th.png',
    role: 'Senior Mobile Developer (Flutter & Android)',
    year: '2025 August - Present',
    ref:
        'Reference\nMr Phyo Min Zaw\nFounder & Managing Director\ncontact@zawminaung.net\n+959765433809',
    exp: [
      "❑ Lead the mobile development team, managing task planning, code reviews, and technical decisions.",
      "❑ Developed and maintained cross-platform mobile applications using Flutter.",
      "❑ Migrated legacy Flutter applications to the latest Flutter versions, improving performance and stability.",
      "❑ Designed and developed Android native applications using Java, Kotlin and Jetpack Compose.",
      "❑ Published and maintained applications on Google Play Store and Apple App Store, handling release and update processes.",
      "❑ Integrated REST APIs and real-time features, collaborating closely with backend teams.",
      "❑ Worked extensively with Odoo backend systems, gaining strong knowledge of Odoo APIs and business workflows.",
      "❑ Collaborated with designers, QA, and backend developers in an Agile/Scrum environment.",
    ],
  ),

  WorkExperienceModel(
    name: "Za Information Technology Co.,Ltd.",
    image: 'assets/images/za.png',
    role: 'Mobile Developer (Flutter & Jetpack Compose)',
    year: '2023 May - 2025 July',
    ref:
        'Reference\nMr Zaw Min Aung\nCo-founder & managing director\ncontact@zawminaung.net\n+959765433809',
    exp: [
      "❑ Built cross-platform apps using Flutter and Kotlin (Compose).",
      "❑ Integrated REST APIs, WebSocket for real-time features (chat, updates).",
      "❑ Implemented CI/CD and Flutter testing (unit, widget).",
      "❑ Designed responsive UI with Material/Cupertino widgets.",
      "❑ Integrated of Sunmi POS, Bluetooth thermal, and laser printers using standard print drivers.",
      "❑ Integrated location-based services and interactive maps in Flutter apps using Google Maps API, OSM and Geolocator.",
      "❑ Collaborated with designers and backend teams in Agile/Scrum workflow.",
    ],
  ),
  WorkExperienceModel(
    name: "Food Burma",
    image: 'assets/images/foodburma.jpg',
    role: 'Mobile Developer(Flutter)',
    year: '2022 April - 2023 April',
    ref:
        "Reference\nMr Kyi Win\nCo-founder & managing director\nfoodburma.dev@gmail.com\n+959681021774",
    exp: [
      "❑ Turned UI designs into smooth, responsive mobile interfaces",
      "❑ Built app logic with the BLoC pattern",
      "❑ Integrated RESTful APIs for real-time backend communication",
      "❑ Prioritized user experience and performance throughout the app",
      "❑ Collaborated closely with other devs and participated in sprint planning",
    ],
  ),
];
