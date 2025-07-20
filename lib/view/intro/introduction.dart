import 'package:flutter/material.dart';
import 'package:portfolio/view/intro/components/intro_body.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
        // if (!Responsive.isLargeMobile(context))
        //   MenuButton(onTap: () => Scaffold.of(context).openDrawer()),
        // SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
        // if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.07),
        const Expanded(child: IntroBody()),
      ],
    );
  }
}
