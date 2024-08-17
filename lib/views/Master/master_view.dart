import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/drawer.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/menu_button.dart';
import 'package:responsive_portfolio/widgets/connect_button.dart';
import 'package:responsive_portfolio/widgets/navigation_tabs.dart';

class MasterView extends StatelessWidget {
  final List<Widget> pages;
  final PageController pageController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   MasterView({super.key, required this.pages, required this.pageController});

  void openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: MenuButton(
                      onTap: openDrawer,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  if (ScreenUtil().screenWidth > 700) const NavigationTabs(),
                  const Spacer(
                    flex: 2,
                  ),
                  const ConnectButton(),
                  const Spacer(),
                ],
              ),
            ),
            if (ScreenUtil().screenWidth < 700)
              const Row(
                children: [Spacer(), NavigationTabs(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [...pages],
              ),
            )
          ],
        ),
      ),
    );
  }
}
