import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';
import 'package:responsive_portfolio/views/Introduction/components/download_button.dart';
import 'package:responsive_portfolio/widgets/animated_image_container.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtility.backgroundColor,
      body: Column(
        children: [
          if (ScreenUtil().screenWidth > 700 && ScreenUtil().screenWidth < 1024)
            tabletWidget()
          else if (ScreenUtil().screenWidth > 1024)
            desktopWidget()
          else
            mobileWidget()
        ],
      ),
    );
  }

  Column mobileWidget() {
    return const Column(
      children: [
        AnimatedImageContainer(height: 200, width: 150),
        SizedBox(height: 70),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Personal Portfolio \nFlutter Developer',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 35),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I'm capable of creating excellent mobile apps \n handling every step from concept to deployment.",
                style:
                    TextStyle(fontSize: 16, color: ColorsUtility.bodyTextColor),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DownloadButton(),
          ],
        ),
      ],
    );
  }

  Row desktopWidget() {
    return Row(
      children: [
        SizedBox(
          width: 130,
          child: Column(
            children: [
              const Text(
                'F\no\nl\nl\no\nw\n\nM\ne',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 5),
              socialMediaIcons(
                onPressed: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/in/shimaa-elnaggar-80b3021b2/'));
                },
                icon: FontAwesomeIcons.linkedin,
              ),
              const SizedBox(height: 5),
              socialMediaIcons(
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/ShimaaElnaggar'));
                },
                icon: FontAwesomeIcons.github,
              ),
            ],
          ),
        ),
        const Column(
          children: [
            SizedBox(height: 100),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Personal Portfolio \nFlutter Developer',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 35),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "I'm capable of creating excellent mobile apps \n handling every step from concept to deployment.",
              style:
                  TextStyle(fontSize: 16, color: ColorsUtility.bodyTextColor),
            ),
            SizedBox(height: 20),
            DownloadButton(),
          ],
        ),
        const SizedBox(
          width: 100,
        ),
        const Column(
          children: [
            AnimatedImageContainer(height: 200, width: 150),
          ],
        )
      ],
    );
  }

  Row tabletWidget() {
    return Row(
      children: [
        SizedBox(
          width: 130,
          child: Column(
            children: [
              const Text(
                'F\no\nl\nl\no\nw\n\nM\ne',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 5),
              socialMediaIcons(
                onPressed: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/in/shimaa-elnaggar-80b3021b2/'));
                },
                icon: FontAwesomeIcons.linkedin,
              ),
              const SizedBox(height: 5),
              socialMediaIcons(
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/ShimaaElnaggar'));
                },
                icon: FontAwesomeIcons.github,
              ),
            ],
          ),
        ),
        const Column(
          children: [
            AnimatedImageContainer(height: 200, width: 150),
            SizedBox(height: 100),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Personal Portfolio \nFlutter Developer',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 35),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "I'm capable of creating excellent mobile apps \n handling every step from concept to deployment.",
              style:
                  TextStyle(fontSize: 16, color: ColorsUtility.bodyTextColor),
            ),
            SizedBox(height: 20),
            DownloadButton(),
          ],
        ),
      ],
    );
  }

  IconButton socialMediaIcons(
          {required void Function()? onPressed, required IconData? icon}) =>
      IconButton(onPressed: onPressed, icon: Icon(icon));
}
