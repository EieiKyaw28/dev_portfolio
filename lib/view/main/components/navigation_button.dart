import 'package:flutter/material.dart';
import 'package:portfolio/res/constants.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isSelected;

  const NavigationTextButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          decoration: BoxDecoration(
            boxShadow:
                isSelected
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
            borderRadius: BorderRadius.circular(10),
          ),

          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              text,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
