import 'package:flutter/material.dart';
import 'package:responsive_portfolio/models/certificate.dart';

import 'package:responsive_portfolio/views/Certifications/components/certificate_details.dart';

class CertificateGrid extends StatelessWidget {
  final List<Certificate> certificateList;
  final int crossAxisCount;

  const CertificateGrid({
    super.key,
    this.crossAxisCount = 3,
    required this.certificateList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: certificateList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [Colors.pinkAccent, Colors.blue],
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.pink,
                offset: Offset(-2, 0),
              ),
              BoxShadow(
                color: Colors.blue,
                offset: Offset(2, 0),
              ),
            ],
          ),
          child: CertificateDetails(
              index: index, certificateList: certificateList),
        );
      },
    );
  }
}
