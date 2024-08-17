import 'package:flutter/material.dart';
import 'package:responsive_portfolio/views/Certifications/certifications_view.dart';
import 'package:responsive_portfolio/views/Introduction/introduction_view.dart';
import 'package:responsive_portfolio/views/Master/master_view.dart';
import 'package:responsive_portfolio/views/projects/projects_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MasterView(pages: const [
      IntroductionView(),
      ProjectsView(),
      CertificationsView(),
    ],
      pageController: _pageController,
    );
  }
}
