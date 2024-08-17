import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio/models/project.dart';
import 'package:responsive_portfolio/providers/project_provider.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProjectProvider>(context, listen: false).readProjects();
    });
  }
@override
  void dispose() {

  _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProjectProvider>(
        builder: (context, projectProvider, _) {
          return projectProvider.projects.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
scrollDirection: Axis.vertical,
            controller: _scrollController,
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: ScreenUtil().screenWidth > 700 ? 3 : 2,
                  ),
                  itemCount: projectProvider.projects.length,
                  itemBuilder: (context, index) {
                    return projectCard(
                        project: projectProvider.projects[index]);
                  },
                );
        },
      ),
    );
  }

  Widget projectCard({required Project project}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(colors: [
            Colors.pinkAccent,
            Colors.blue,
          ]),
          boxShadow: const [
            BoxShadow(
              color: Colors.pink,
              offset: Offset(-2, 0),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Colors.blue,
              offset: Offset(2, 0),
              blurRadius: 4,
            ),
          ]),
      child: AnimatedContainer(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorsUtility.backgroundColor),
          duration: const Duration(milliseconds: 500),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                project.name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              project.description,
              style: const TextStyle(
                color: ColorsUtility.bodyTextColor,
              ),
              maxLines: 4,
              overflow: TextOverflow.fade,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Check On Github',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse(project.link));
                    },
                    icon: const Icon(FontAwesomeIcons.github)),
              ],
            ),
          ])),
    );
  }
}
