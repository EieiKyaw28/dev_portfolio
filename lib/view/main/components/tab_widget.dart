import 'package:flutter/material.dart';
import 'package:portfolio/res/constants.dart' as MyTheme;

class CommonTabWidget extends StatelessWidget {
  final Function(int) onTap;
  final int selectedValue;
  final List<String> tabs;

  const CommonTabWidget({
    super.key,
    required this.onTap,
    required this.selectedValue,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 410,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        color: MyTheme.secondaryColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: MyTheme.g1Color,
            offset: Offset(0, -1),
            blurRadius: 5,
          ),
          BoxShadow(
            color: MyTheme.g2Color,
            offset: Offset(0, 1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Row(
          children: List.generate(tabs.length, (index) {
            return _ToggleComponent(
              isSelected: selectedValue == index,
              onTap: () {
                onTap(index);
              },
              text: tabs[index],
              value: index,
            );
          }),
        ),
      ),
    );
  }
}

class _ToggleComponent extends StatelessWidget {
  const _ToggleComponent({
    required this.onTap,
    required this.value,
    required this.isSelected,
    required this.text,
  });

  final int value;
  final VoidCallback onTap;
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.white : MyTheme.bgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: isSelected ? MyTheme.darkColor : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
