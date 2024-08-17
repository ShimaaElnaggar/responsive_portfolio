import 'package:flutter/material.dart';
import 'package:responsive_portfolio/views/Certifications/certifications_view.dart';
import 'package:responsive_portfolio/views/Introduction/introduction_view.dart';
import 'package:responsive_portfolio/views/Master/master_view.dart';
import 'package:responsive_portfolio/views/projects/projects_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MasterView(pages: const [
      IntroductionView(),
      ProjectsView(),
      CertificationsView(),
    ]);
  }
}
