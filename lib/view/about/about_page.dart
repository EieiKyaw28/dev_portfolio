import 'dart:async';

import 'package:flutter/material.dart';

import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/projects/components/title_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/drawer/drawer_image.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;

  late AnimationController _controller3;

  late Animation<double> _fadeAnimation;
  late Animation<double> _fadeAnimation2;

  late Animation<double> _fadeAnimation3;

  late Animation<double> _slideAnimation;
  late Animation<double> _slideAnimation2;

  late Animation<double> _slideAnimation3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 900),
    );

    _controller3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    // First animation
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _slideAnimation = Tween<double>(
      begin: 10.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    // Second animation
    _fadeAnimation2 = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller2, curve: Curves.easeInOut));

    _slideAnimation2 = Tween<double>(
      begin: 10.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _controller2, curve: Curves.easeOut));

    // Third animation
    _fadeAnimation3 = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller3, curve: Curves.easeInOut));

    _slideAnimation3 = Tween<double>(
      begin: 10.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _controller3, curve: Curves.easeOut));

    // Start each animation after a delay
    Future.delayed(Duration(seconds: 3), () => _controller.forward());
    Future.delayed(Duration(seconds: 4), () => _controller2.forward());
    Future.delayed(Duration(seconds: 5), () => _controller3.forward());
  }

  Future<void> _launchLinkedIn() async {
    final Uri uri = Uri.parse(
      "https://www.linkedin.com/in/eiei-kyaw-862199257",
    );
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception(
        'Could not launch ${"https://www.linkedin.com/in/eiei-kyaw-862199257"}',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        color: bgColor,
        child: SingleChildScrollView(
          child:
              isDesktop
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            colors: [g1Color, g2Color],
                          ).createShader(bounds);
                        },
                        child: TitleText(prefix: '', title: 'About Me'),
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              //height: 200,
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
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(5),
                                child: Image.asset("assets/images/pp.jpg"),
                              ),
                            ),
                          ),
                          SizedBox(width: 40),

                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: AnimatedBuilder(
                                        animation: _controller,
                                        builder: (context, child) {
                                          return Opacity(
                                            opacity: _fadeAnimation.value,
                                            child: Transform.translate(
                                              offset: Offset(
                                                0,
                                                _slideAnimation.value,
                                              ),
                                              child: child,
                                            ),
                                          );
                                        },

                                        child: Column(
                                          children: [
                                            //test
                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon: Icons.person,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "Who Am I",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),

                                            Text(
                                              'I’m a passionate Mobile Developer with over 2 years of experience in building high-quality applications across native Android (Kotlin, Jetpack Compose) and cross-platform frameworks (Flutter, Dart).',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),

                                    Expanded(
                                      child: AnimatedBuilder(
                                        animation: _controller2,
                                        builder: (context, child) {
                                          return Opacity(
                                            opacity: _fadeAnimation2.value,
                                            child: Transform.translate(
                                              offset: Offset(
                                                0,
                                                _slideAnimation2.value,
                                              ),
                                              child: child,
                                            ),
                                          );
                                        },

                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon:
                                                      Icons.lightbulb_outlined,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "My Approach",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),

                                            Text(
                                              'I focus on clean, maintainable code with strong skills in UI/UX, database management, API integration, and mobile security. I’m quick to adopt new technologies and committed to delivering smooth, user-centered mobile experiences—both independently and in teams.',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),

                                Row(
                                  children: [
                                    Icon(Icons.info, color: Colors.white),
                                    SizedBox(width: 10),
                                    Text(
                                      "Personal Info",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                AnimatedBuilder(
                                  animation: _controller3,
                                  builder: (context, child) {
                                    return Opacity(
                                      opacity: _fadeAnimation3.value,
                                      child: Transform.translate(
                                        offset: Offset(
                                          0,
                                          _slideAnimation3.value,
                                        ),
                                        child: child,
                                      ),
                                    );
                                  },

                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon: Icons.location_pin,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "Yangon, Myanmar",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon: Icons.phone,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "09787027464",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon: Icons.email,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "eieikyaw.dev@gmail.com",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon: Icons.sms,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "+959787027464",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),

                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon: Icons.language,
                                                ),
                                                SizedBox(width: 10),
                                                InkWell(
                                                  onTap: () {
                                                    _launchLinkedIn();
                                                  },
                                                  child: Text(
                                                    "https://www.linkedin.com/in/eiei-kyaw-862199257",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(width: 10),

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                _ContainerWidgt(
                                                  icon:
                                                      Icons.cast_for_education,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "Education",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "ㆍUniversity of Computer Studies Taungoo (UCST) ",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),

                                                SizedBox(height: 10),
                                                Text(
                                                  'ㆍComputech ICT institute',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Text(
                                                  '   Certified in " Fundamental Information TechnologyEngineering Examination" (FE)',
                                                  //style: TextStyle(color: Colors.white),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'ㆍUniversity of Taxila',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Text(
                                                  '   Career Readiness and Professional Development ',
                                                  // style: TextStyle(color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            colors: [g1Color, g2Color],
                          ).createShader(bounds);
                        },
                        child: TitleText(prefix: '', title: 'About Me'),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        //  / height: 200,
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
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(5),
                          child: Image.asset("assets/images/pp.jpg"),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          _ContainerWidgt(icon: Icons.person),
                          SizedBox(width: 10),
                          Text(
                            "Who Am I",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      Text(
                        'I’m a passionate Mobile Developer with over 2 years of experience in building high-quality applications across native Android (Kotlin, Jetpack Compose) and cross-platform frameworks (Flutter, Dart).',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          _ContainerWidgt(icon: Icons.lightbulb_outlined),
                          SizedBox(width: 10),
                          Text(
                            "My Approach",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      Text(
                        'I focus on clean, maintainable code with strong skills in UI/UX, database management, API integration, and mobile security. I’m quick to adopt new technologies and committed to delivering smooth, user-centered mobile experiences—both independently and in teams.',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Icon(Icons.info, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "Personal Info",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.location_pin, color: g1Color),
                                SizedBox(width: 2),
                                Expanded(
                                  child: Text(
                                    "Yangon, Myanmar",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.phone, color: g1Color),
                                SizedBox(width: 2),
                                Expanded(
                                  child: Text(
                                    "09787027464",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.email, color: g1Color),

                                SizedBox(width: 2),
                                Expanded(
                                  child: Text(
                                    "eieikyaw.dev@gmail.com",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.sms, color: g1Color),
                                SizedBox(width: 2),
                                Expanded(
                                  child: Text(
                                    "+959787027464",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),
                      Row(
                        children: [
                          _ContainerWidgt(icon: Icons.cast_for_education),
                          SizedBox(width: 10),
                          Text(
                            "Education",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "ㆍUniversity of Computer Studies Taungoo (UCST) ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 10),
                      Text(
                        'ㆍComputech ICT institute',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '   Certified in " Fundamental Information TechnologyEngineering Examination" (FE)',
                        //style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'ㆍUniversity of Taxila',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '   Career Readiness and Professional Development ',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}

class _ContainerWidgt extends StatelessWidget {
  const _ContainerWidgt({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bgColor,
        boxShadow: const [
          BoxShadow(color: g1Color, offset: Offset(0, -1), blurRadius: 5),
          BoxShadow(color: g2Color, offset: Offset(0, 1), blurRadius: 5),
        ],
      ),
      child: Icon(icon, color: g1Color),
    );
  }
}
