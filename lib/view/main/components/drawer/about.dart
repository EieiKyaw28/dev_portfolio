import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/model/contact_model.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Container(
      color: bgColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              width:
                  isDesktop
                      ? MediaQuery.of(context).size.width * .3
                      : MediaQuery.of(context).size.width * .7,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: isDesktop ? defaultPadding / 1.5 : defaultPadding / 4,
                horizontal: defaultPadding * 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
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
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [g1Color, g2Color],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(seconds: 1),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(0, 50 * (1 - value)),
                          child: child,
                        ),
                      );
                    },
                    child: const Text(
                      'ABOUT ME',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: defaultPadding / 3),
                ],
              ),
            ),

            SizedBox(height: 5),

            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ei Ei Kyaw',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(height: defaultPadding / 4),

                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              height: 1.5,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            children: [
                              const TextSpan(
                                text: 'I am a Mobile Developer with ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              WidgetSpan(
                                child: ShaderMask(
                                  shaderCallback:
                                      (bounds) => const LinearGradient(
                                        colors: [g1Color, g2Color],
                                      ).createShader(
                                        Rect.fromLTWH(
                                          0,
                                          0,
                                          bounds.width,
                                          bounds.height,
                                        ),
                                      ),
                                  child: const Text(
                                    'over 2 years of experience delivering high-quality applications across',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ), // white needed to show gradient
                                  ),
                                ),
                              ),
                              // const TextSpan(
                              //   text:
                              //       'delivering high-quality applications across',
                              //   style: TextStyle(
                              //     fontSize: 16,
                              //     color: Colors.white,
                              //   ),
                              // ),
                              WidgetSpan(
                                child: ShaderMask(
                                  shaderCallback:
                                      (bounds) => const LinearGradient(
                                        colors: [g1Color, g2Color],
                                      ).createShader(
                                        Rect.fromLTWH(
                                          0,
                                          0,
                                          bounds.width,
                                          bounds.height,
                                        ),
                                      ),
                                  child: const Text(
                                    'native Android (Java, Kotlin, Jetpack Compose) and cross-platform frameworks (Flutter, Dart).',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ), // white needed to show gradient
                                  ),
                                ),
                              ),
                              const TextSpan(
                                text:
                                    'My expertise spans UI/UX design, database management, API integration, and mobile security best practices.  I’m passionate about writing clean, maintainable code and continuously exploring new technologies to stay ahead in the field. Whether working independently or collaborating with a team, I’m committed to delivering seamless, user-centered mobile experiences that make a difference.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (isDesktop)
                  Expanded(
                    child: SizedBox(
                      height: 300,
                      child: Lottie.asset('assets/jsons/developer.json'),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20),

            /// Education
            Row(
              children: [
                if (isDesktop)
                  Expanded(
                    child: SizedBox(
                      height: 300,
                      child: Lottie.asset('assets/jsons/edu.json'),
                    ),
                  ),

                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width:
                                isDesktop
                                    ? MediaQuery.of(context).size.width * .4
                                    : MediaQuery.of(context).size.width * .7,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              vertical:
                                  isDesktop
                                      ? defaultPadding / 1.5
                                      : defaultPadding / 3,
                              horizontal: defaultPadding * 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
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
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [g1Color, g2Color],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0.0, end: 1.0),
                                  duration: const Duration(seconds: 1),
                                  builder: (context, value, child) {
                                    return Opacity(
                                      opacity: value,
                                      child: Transform.translate(
                                        offset: Offset(0, 50 * (1 - value)),
                                        child: child,
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'EDUCATION',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                const SizedBox(width: defaultPadding / 3),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      if (isDesktop)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 500,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "University of Computer Studies Taungoo (UCST) ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),

                                    SizedBox(height: 10),
                                    Text(
                                      'Computech ICT institute',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      'Certified in " Fundamental Information TechnologyEngineering Examination" (FE)',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'University of Taxila',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      'Career Readiness and Professional Development ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      else
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "University of Computer Studies Taungoo (UCST) ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),

                              SizedBox(height: 10),
                              Text(
                                'Computech ICT institute',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Certified in " Fundamental Information TechnologyEngineering Examination" (FE)',
                                //style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'University of Taxila',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Career Readiness and Professional Development ',
                                // style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            if (!isDesktop) SizedBox(height: 10),

            ///Contact
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width:
                                isDesktop
                                    ? MediaQuery.of(context).size.width * .4
                                    : MediaQuery.of(context).size.width * .7,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              vertical:
                                  isDesktop
                                      ? defaultPadding / 1.5
                                      : defaultPadding / 3,
                              horizontal: defaultPadding * 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
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
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [g1Color, g2Color],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0.0, end: 1.0),
                                  duration: const Duration(seconds: 1),
                                  builder: (context, value, child) {
                                    return Opacity(
                                      opacity: value,
                                      child: Transform.translate(
                                        offset: Offset(0, 50 * (1 - value)),
                                        child: child,
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'CONTACT',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                const SizedBox(width: defaultPadding / 3),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        itemCount: contactList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          mainAxisExtent: 100,
                        ),
                        itemBuilder: (context, index) {
                          final item = contactList[index];
                          return Container(
                            child: Column(
                              children: [
                                ShaderMask(
                                  shaderCallback:
                                      (bounds) => LinearGradient(
                                        colors: [g1Color, g2Color],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ).createShader(bounds),
                                  blendMode: BlendMode.srcIn,
                                  child: Icon(
                                    item.icon,
                                    size: isDesktop ? 40 : 30,
                                  ),
                                ),

                                Text(
                                  item.title,
                                  style: TextStyle(
                                    fontSize: isDesktop ? 20 : 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                if (isDesktop)
                  Expanded(
                    child: SizedBox(
                      height: 300,
                      child: Lottie.asset('assets/jsons/contact_info.json'),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
