import 'package:flutter/material.dart';
import 'package:portfolio/view%20model/responsive.dart';

import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    super.key,
    required this.selectedText,
    required this.onTap,
  });
  final String selectedText;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),

          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2),
          if (!Responsive.isLargeMobile(context))
            NavigationButtonList(selectedText: selectedText, onTap: onTap),
          const Spacer(flex: 2),
          //  const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
