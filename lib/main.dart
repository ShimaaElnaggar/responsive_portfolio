import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio/providers/certificate_provider.dart';
import 'package:responsive_portfolio/providers/project_provider.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';
import 'package:responsive_portfolio/views/Splash/splash_view.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CertificateProvider>(
      create: (context) => CertificateProvider(),
    ),
    ChangeNotifierProvider<ProjectProvider>(
      create: (context) => ProjectProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, _) => MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: ColorsUtility.backgroundColor,
          useMaterial3: true,
        ),
        home: const SplashView(),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
