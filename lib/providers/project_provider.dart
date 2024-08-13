import 'package:flutter/cupertino.dart';
import 'package:responsive_portfolio/models/project.dart';

class ProjectProvider extends ChangeNotifier {
  final List<Project> _projects = [];

  void addProject(Project project) {
    _projects.add(project);
    notifyListeners();
  }

  void removeProject(Project project) {
    _projects.remove(project);
    notifyListeners();
  }

  List<Project> get projects => _projects;
}
