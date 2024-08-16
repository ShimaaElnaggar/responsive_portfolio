import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       SizedBox(height: 15,),
        Text(
          'Shimaa Elnaggar',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),
        ),
        SizedBox(height: 5),
        Text(
          'Flutter Developer & Recent Graduate from \nSoftware Engineering',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w200, color: ColorsUtility.bodyTextColor),
        ),
       SizedBox(height: 15,),
      ],
    );
  }
}
