import 'package:flutter/material.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatefulWidget {
  const NavigationButtonList({
    super.key,
    required this.selectedText,
    required this.onTap,
  });
  final String selectedText;
  final Function(int) onTap;

  @override
  State<NavigationButtonList> createState() => _NavigationButtonListState();
}

class _NavigationButtonListState extends State<NavigationButtonList> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationTextButton(
                isSelected: widget.selectedText == 'Home',
                onTap: () {
                  widget.onTap(0);
                },
                text: 'Home',
              ),

              NavigationTextButton(
                isSelected: widget.selectedText == 'About',
                onTap: () {
                  widget.onTap(1);
                },
                text: 'About',
              ),
              NavigationTextButton(
                isSelected: widget.selectedText == 'Work Experiences',
                onTap: () {
                  widget.onTap(2);
                },
                text: 'Work Experiences',
              ),
              NavigationTextButton(
                isSelected: widget.selectedText == 'Project Experiences',
                onTap: () {
                  widget.onTap(3);
                },
                text: 'Project Experiences',
              ),
              NavigationTextButton(
                isSelected: widget.selectedText == 'Skills',
                onTap: () {
                  widget.onTap(4);
                },
                text: 'Skills',
              ),
            ],
          ),
        );
      },
    );
  }
}
