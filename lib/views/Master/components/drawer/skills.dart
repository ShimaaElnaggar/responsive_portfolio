import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/images_utility.dart';

class SkillDecoration extends StatelessWidget {
  const SkillDecoration(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      image!,
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    Text('${(value * 100).toInt().toString()}%'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                LinearProgressIndicator(
                  value: value,
                  backgroundColor: Colors.black,
                  color: Colors.amberAccent,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkillDecoration(
          percentage: 0.7,
          title: 'Flutter',
          image: ImagesUtility.flutter,
        ),
        SkillDecoration(percentage: 0.9, title: 'Dart', image:ImagesUtility.dart),
        SkillDecoration(
            percentage: 0.5,
            title: 'Firebase',
            image: ImagesUtility.firebase),
        SkillDecoration(
            percentage: 0.9, title: 'Sqlite', image: ImagesUtility.dart),
        SkillDecoration(
            percentage: 0.7,
            title: 'Responsive Design',
            image: ImagesUtility.flutter),

        SkillDecoration(percentage: 0.8, title: 'Bloc', image: ImagesUtility.bloc),
        SkillDecoration(
            percentage: 0.93,
            title: 'Provider',
            image: ImagesUtility.dart),
      ],
    );
  }
}
