import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/projects/components/title_text.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
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
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/za.png",
                              height: Responsive.isMobile(context) ? 70 : null,
                              width: Responsive.isMobile(context) ? 70 : null,
                            ),
                            Expanded(
                              child: Text(
                                "Za Information Technology Co.,Ltd.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Tooltip(
                              message:
                                  "Reference\nMr Zaw Min Aung\nCo-founder & managing director\ncontact@zawminaung.net\n+959765433809",
                              child: Icon(Icons.info, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mobile Developer (Flutter & Jetpack Compose)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("2022  May - 2025 July"),
                        SizedBox(height: 10),

                        Text(
                          "❑ Built cross-platform apps using Flutter and Kotlin (Compose)",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: Responsive.isMobile(context) ? 5 : 3),

                        Text(
                          "❑ Integrated REST APIs, WebSocket for real-time features (chat, updates)",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: Responsive.isMobile(context) ? 5 : 3),

                        Text(
                          "❑ Used Firebase, Supabase, MongoDB Atlas for scalable backends",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: Responsive.isMobile(context) ? 5 : 3),

                        Text(
                          "❑ Implemented CI/CD and Flutter testing (unit, widget)",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: Responsive.isMobile(context) ? 5 : 3),

                        Text(
                          "❑ Designed responsive UI with Material/Cupertino widgets",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: Responsive.isMobile(context) ? 5 : 3),

                        Text(
                          "❑ Integrated of Sunmi POS, Bluetooth thermal, and laser printers using standard print drivers",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: Responsive.isMobile(context) ? 5 : 3),

                        Text(
                          "❑ Integrated location-based services and interactive maps in Flutter apps using Google Maps API, OSM and Geolocator",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: Responsive.isMobile(context) ? 5 : 3),
                        Text(
                          "❑ Collaborated with designers and backend teams in Agile/Scrum workflow.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
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
