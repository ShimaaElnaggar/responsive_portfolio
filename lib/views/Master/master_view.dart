import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/drawer.dart';
import 'package:responsive_portfolio/views/Master/components/drawer/menu_button.dart';
import 'package:responsive_portfolio/widgets/connect_button.dart';
import 'package:responsive_portfolio/widgets/navigation_tabs.dart';

class MasterView extends StatelessWidget {
  final List<Widget> pages;
  const MasterView({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      onTap: () => Scaffold.of(context).openDrawer(),
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
                controller: PageController(),
                children: [...pages],
              ),
            )
          ],
        ),
      ),
    );
  }
}
