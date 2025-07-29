import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(
          Uri.parse(
            'https://drive.google.com/file/d/1aKW6Qpb6lJkqV8r3gWBN06XO9wxUqnaf/view?usp=sharing',
          ),
        );
      },
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: bgColor,
          boxShadow: const [
            BoxShadow(color: g1Color, offset: Offset(0, -1), blurRadius: 5),
            BoxShadow(color: g2Color, offset: Offset(0, 1), blurRadius: 5),
          ],
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 1.5,
          horizontal: defaultPadding * 2,
        ),

        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Colors.white,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: defaultPadding / 3),
            const Icon(
              FontAwesomeIcons.download,
              color: Colors.white70,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
