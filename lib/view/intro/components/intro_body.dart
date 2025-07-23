import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/view/projects/components/title_text.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import 'animated_texts_componenets.dart';

import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    final isDesktop = Responsive.isDesktop(context);

    return isDesktop
        ? Row(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.06),

                  Row(
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: Duration(seconds: 1),
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, 50 * (1 - value)),
                              child: child,
                            ),
                          );
                        },
                        child: ShaderMask(
                          shaderCallback: (bounds) {
                            return const LinearGradient(
                              colors: [g1Color, g2Color],
                            ).createShader(bounds);
                          },
                          child: TitleText(
                            prefix: '',
                            title: "Mobile Developer ",
                          ),
                        ),
                      ),
                    ],
                  ),

                  if (kIsWeb && Responsive.isLargeMobile(context))
                    Container(
                      height: defaultPadding,
                      color: Colors.transparent,
                    ),

                  const Responsive(
                    desktop: MyPortfolioText(start: 40, end: 50),
                    largeMobile: MyPortfolioText(start: 40, end: 35),
                    mobile: MyPortfolioText(start: 35, end: 30),
                    tablet: MyPortfolioText(start: 50, end: 40),
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    children: [
                      Icon(Icons.location_pin, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        "Yangon, Myanmar",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  // const Responsive(
                  //   desktop: AnimatedDescriptionText(start: 14, end: 15),
                  //   largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                  //   mobile: AnimatedDescriptionText(start: 14, end: 12),
                  //   tablet: AnimatedDescriptionText(start: 17, end: 14),
                  // ),
                  const SizedBox(height: defaultPadding * 1),
                  const DownloadButton(),
                ],
              ),
            ),
            if (Responsive.isDesktop(context)) const Spacer(),
            if (Responsive.isDesktop(context))
              Lottie.asset('assets/jsons/developer.json'),

            if (Responsive.isDesktop(context)) const Spacer(),
          ],
        )
        : SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.06),

              Lottie.asset('assets/jsons/developer.json'),

              Row(
                children: [
                  TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(seconds: 1),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(0, 50 * (1 - value)),
                          child: child,
                        ),
                      );
                    },
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [g1Color, g2Color],
                        ).createShader(bounds);
                      },
                      child: Text(
                        "Mobile Developer ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Responsive(
                desktop: MyPortfolioText(start: 40, end: 50),
                largeMobile: MyPortfolioText(start: 40, end: 35),
                mobile: MyPortfolioText(start: 35, end: 30),
                tablet: MyPortfolioText(start: 50, end: 40),
              ),
              const SizedBox(height: defaultPadding / 2),
              Row(
                children: [
                  Icon(Icons.location_pin, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Yangon, Myanmar",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Row(children: [const DownloadButton()]),
            ],
          ),
        );
  }
}
