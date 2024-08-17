import 'package:flutter/material.dart';

class NavigationTabs extends StatelessWidget {
  const NavigationTabs({super.key});
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              navigationTextButton(
                  context: context,
                  onTap: () {
                    PageController().animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Home'),
              navigationTextButton(
                  context: context,
                  onTap: () {
                    PageController().animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Projects'),
              navigationTextButton(
                  context: context,
                  onTap: () {
                    PageController().animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Certifications'),
            ],
          ),
        );
      },
    );
  }

  navigationTextButton(
      {required Null Function() onTap,
      required String text,
      required BuildContext context}) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
