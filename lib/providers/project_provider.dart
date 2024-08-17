import 'package:flutter/cupertino.dart';
import 'package:responsive_portfolio/models/project.dart';

class ProjectProvider extends ChangeNotifier {
  List<Project> _projects = [];

  void readProjects() {
    _projects = [
      Project(
        name: 'Easy Pos',
        description: 'Point Of Sale app allow you to manage clients, categories,products and All Sales at any time ',
        image: '',
        link: 'https://github.com/ShimaaElnaggar/easy-pos-r5',
      ),
      Project(
        name: 'News App',
        description: 'Customize your feed to see the news that matters most to you. Follow topics, and sources you care about.',
        image: '',
        link: 'https://github.com/ShimaaElnaggar/news_app',
      ),
      Project(
        name: 'Store App',
        description: 'Browse through thousands of products across various categories, Find everything you need in one place, from daily essentials to luxury items.',
        image: '',
        link: 'https://github.com/ShimaaElnaggar/store_app',
      ),
      Project(
        name: 'Weather App',
        description: 'Get real-time weather updates, forecasts, and alerts for any location.',
        image: '',
        link: 'https://github.com/ShimaaElnaggar/weather',),
      Project(
        name: 'Notes App',
        description: 'Jot down your thoughts, ideas, and to-do lists quickly and easily.',
        image: '',
        link: 'https://github.com/ShimaaElnaggar/notes_app',),
      Project(
        name: 'Chat App',
        description: 'Send and receive messages in real-time.',
        image: '',
        link: 'https://github.com/ShimaaElnaggar/chat',),
    ];
    notifyListeners();
  }

  List<Project> get projects => _projects;
}
