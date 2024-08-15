import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio/models/certificate.dart';
import 'package:responsive_portfolio/providers/certificate_provider.dart';
import 'package:responsive_portfolio/views/Certifications/components/certification_grid.dart';
import 'package:responsive_portfolio/widgets/title_text.dart';

class CertificationsView extends StatefulWidget {
  const CertificationsView({super.key});

  @override
  _CertificationsViewState createState() => _CertificationsViewState();
}

class _CertificationsViewState extends State<CertificationsView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CertificateProvider>(context, listen: false)
          .readCertificates();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CertificateProvider>(
        builder: (context, certificateProvider, _) {
          List<Certificate> certificateList = certificateProvider.certificates;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(20)),
              const TitleText(prefix: 'Certifications & ', title: 'License'),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Expanded(
                child: CertificateGrid(
                  crossAxisCount: ScreenUtil().screenWidth > 700 ? 3 : 2,
                  certificateList: certificateList,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
