import 'package:flutter/material.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/responsive.dart';
import 'package:portfolio/view/projects/components/title_text.dart';

import '../components/navigation_button_list.dart';

class MainView extends StatefulWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  ScrollController scrollController = ScrollController();
  int currentIndex = 0;

  // Assume each section is 300 pixels tall
  late List<GlobalKey> sectionKeys;

  @override
  void initState() {
    super.initState();

    sectionKeys = List.generate(widget.pages.length, (index) => GlobalKey());

    scrollController.addListener(() {
      _updateCurrentIndex();
    });
  }

  void _updateCurrentIndex() {
    for (int i = 0; i < sectionKeys.length; i++) {
      final key = sectionKeys[i];
      final context = key.currentContext;

      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);
        final height = box.size.height;
        final screenHeight = MediaQuery.of(context).size.height;

        final top = position.dy;
        final bottom = top + height;

        if (top < screenHeight / 2 && bottom > screenHeight / 2) {
          if (currentIndex != i) {
            setState(() {
              currentIndex = i;
            });
          }
          break;
        }
      }
    }
  }

  void scrollToIndex(int index) {
    final context = sectionKeys[index].currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          currentIndex == 4
              ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Developed in Flutter with ❤️",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              )
              : null,

      body: Center(
        child: Column(
          children: [
            SizedBox(height: Responsive.isMobile(context) ? 50 : 30),
            if (Responsive.isMobile(context))
              NavigationButtonList(
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                  scrollToIndex(index);
                },
                selectedText:
                    currentIndex == 0
                        ? 'Home'
                        : currentIndex == 1
                        ? "About"
                        : currentIndex == 2
                        ? "Work Experiences"
                        : currentIndex == 3
                        ? "Project Experiences"
                        : "Skills",
              )
            else
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
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
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/ei_logo.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                    ),

                    NavigationButtonList(
                      onTap: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                        scrollToIndex(index);
                      },
                      selectedText:
                          currentIndex == 0
                              ? 'Home'
                              : currentIndex == 1
                              ? "About"
                              : currentIndex == 2
                              ? "Work Experiences"
                              : currentIndex == 3
                              ? "Project Experiences"
                              : "Skills",
                    ),
                  ],
                ),
              ),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: List.generate(widget.pages.length, (index) {
                    return Container(
                      key: sectionKeys[index],
                      child: widget.pages[index],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
