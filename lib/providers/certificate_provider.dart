import 'package:flutter/cupertino.dart';
import 'package:responsive_portfolio/models/certificate.dart';

class CertificateProvider extends ChangeNotifier {
  final List<Certificate> _certificates = [];

  void addCertificate(Certificate certificate) {
    _certificates.add(certificate);
    notifyListeners();
  }

  void removeCertificate(int index) {
    _certificates.removeAt(index);
    notifyListeners();
  }

  List<Certificate> get certificates => _certificates;
}
