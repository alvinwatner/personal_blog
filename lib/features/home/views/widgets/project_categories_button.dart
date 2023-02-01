import 'package:flutter/material.dart';
import 'package:personal_blog/features/ai_project/views/pages/list_ai_project_page.dart';
import 'package:personal_blog/features/mobile_app_project/views/pages/list_ma_project_page.dart';

enum ProjectCategory {
  mobileApp,
  ai,
  unselected,
}

class ProjectCategoriesButton extends StatefulWidget {
  const ProjectCategoriesButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectCategoriesButton> createState() =>
      _ProjectCategoriesButtonState();
}

class _ProjectCategoriesButtonState extends State<ProjectCategoriesButton> {
  late ProjectCategory selectedProjectCategory;
  double loadingValue = 0.0;

  @override
  void initState() {
    selectedProjectCategory = ProjectCategory.unselected;
    super.initState();
  }

  void updateSelectedCategory(ProjectCategory projectCategory) async {
    setState(() {
      selectedProjectCategory = projectCategory;
    });
    String routeName = '';
    if (projectCategory == ProjectCategory.mobileApp) {
      routeName = ListMobileAppProjectPage.routeName;
    } else {
      routeName = ListAIProjectPage.routeName;
    }
    await Future.delayed(
      const Duration(milliseconds: 500),
      () {
        Navigator.of(context).pushNamed(routeName);
      },
    );
    setState(() {
      selectedProjectCategory = ProjectCategory.unselected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300.0,
          height: 300.0,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 15,
                blurRadius: 15,
                offset: const Offset(0, 3),
              ),
            ],
            gradient: const LinearGradient(
              colors: [Colors.deepPurple, Colors.lightBlue],
              stops: [0.0, 0.7],
            ),
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "- Experience -",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey.shade200,
                      ),
                ),
                
                const SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ElevatedButton(
                    onPressed: () {
                      updateSelectedCategory(ProjectCategory.mobileApp);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          (selectedProjectCategory == ProjectCategory.mobileApp)
                              ? Colors.orange
                              : Colors.white,
                    ),
                    child: Text(
                      "Mobile Application",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ElevatedButton(
                    onPressed: () {
                      updateSelectedCategory(ProjectCategory.ai);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          (selectedProjectCategory == ProjectCategory.ai)
                              ? Colors.orange
                              : Colors.white,
                    ),
                    child: Text(
                      "Artificial Intelligence",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        if (selectedProjectCategory != ProjectCategory.unselected)
          SizedBox(
            height: 10,
            width: MediaQuery.of(context).size.width * 0.5,
            child: const LinearProgressIndicator(
              color: Colors.purple,
            ),
          ),
      ],
    );
  }
}
