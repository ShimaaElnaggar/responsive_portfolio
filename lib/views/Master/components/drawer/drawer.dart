import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';

import 'package:responsive_portfolio/views/Master/components/drawer/about_section.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/contact_info.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/knowledge.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/personal_info.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/skills.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return const Drawer(
      backgroundColor: ColorsUtility.backgroundColor,
      child: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
               AboutSection(),
               Divider(),
               Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MySKills(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    ContactInfo(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );


  }
}
