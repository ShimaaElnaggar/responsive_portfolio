import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/images_utility.dart';

import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://www.linkedin.com/in/shimaa-elnaggar-80b3021b2/'));
              },
              icon: Image.asset(ImagesUtility.linkedin,height: 30,width: 30,)),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/ShimaaElnaggar'));
              },
              icon: Image.asset(ImagesUtility.github,height: 30,width: 30,)),
          const Spacer(),
        ],
      ),
    );
  }
}
