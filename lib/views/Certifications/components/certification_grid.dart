import 'package:flutter/material.dart';
import 'package:responsive_portfolio/models/certificate.dart';

import 'package:responsive_portfolio/views/Certifications/components/certificate_details.dart';

class CertificateGrid extends StatefulWidget {
  final List<Certificate> certificateList;
  final int crossAxisCount;

  const CertificateGrid({
    super.key,
    this.crossAxisCount = 3,
    required this.certificateList,
  });

  @override
  State<CertificateGrid> createState() => _CertificateGridState();
}

class _CertificateGridState extends State<CertificateGrid> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: widget.certificateList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount,
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
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.blue,
                offset: Offset(2, 0),
                blurRadius: 10,
              ),
            ],
          ),
          child: CertificateDetails(
              index: index, certificateList: widget.certificateList),
        );
      },
    );
  }
}
