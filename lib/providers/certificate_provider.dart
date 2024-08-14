import 'package:flutter/cupertino.dart';
import 'package:responsive_portfolio/models/certificate.dart';

class CertificateProvider extends ChangeNotifier {
  late List<Certificate> _certificates = [];

  void readCertificates() {
    _certificates = [
      Certificate(
        name: 'Complete Flutter & Dart Development Course',
        organization: 'Udemy',
        date: '2023',
        skills: 'Dart, Flutter, Firebase, Restful API, Dio, HTTP, Hive, Cubit, Provider',
        credential: 'https://www.udemy.com/certificate/UC-fff0024a-4f0f-4a78-8f2a-3d268b6652ea/',
      ),
      Certificate(
        name: 'Git and GitHub',
        organization: 'Almdrasa',
        date: '2023',
        skills: 'deal with Git and GitHub',
        credential: 'https://almdrasa.com/certificate-verification/14B418F08-14B31DA57-12CFA662B/',
      ),
      Certificate(
        name: 'Mobile Development Using Flutter',
        organization: 'iTi',
        date: '2022',
        skills: 'Dart, Flutter, Restful API, HTTP, Cubit, Provider',
        credential: 'https://drive.google.com/file/d/1MwelJQ7WZ0BVVCQq98dh8VrfP5bONbUk/view',
      ),
      Certificate(
        name: 'Flutter Development Basics Level Course',
        organization: 'Egyptian Council for \n Training and Development - UN Women Egypt',
        date: '2024',
        skills: 'Dart, Flutter, Sqlite',
        credential: 'https://drive.google.com/file/d/1fhdNVcwCPUnXOLqJxL6mteRlCsifPq4C/view',
      ),
    ];
    notifyListeners();
  }

  List<Certificate> get certificates => _certificates;
}