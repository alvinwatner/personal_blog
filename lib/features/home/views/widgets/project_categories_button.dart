import 'package:flutter/material.dart';
import 'package:alvinwatner/features/ai_project/views/pages/list_ai_project_page.dart';
import 'package:alvinwatner/features/mobile_app_project/views/pages/list_ma_project_page.dart';
import 'package:alvinwatner/shared/responsive/utils.dart';

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
          width: responsiveValue(
            context,
            desktop: 300,
            tablet: 300,
            mobile: 220,
          ),
          height: responsiveValue(
            context,
            desktop: 300,
            tablet: 300,
            mobile: 220,
          ),
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
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              children: [
                SizedBox(
                  height: responsiveValue(
                    context,
                    desktop: 30,
                    tablet: 20,
                    mobile: 10,
                  ),
                ),
                Text(
                  "- Experience -",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey.shade200,
                      ),
                ),
                SizedBox(
                  height: responsiveValue(
                    context,
                    desktop: 50,
                    tablet: 50,
                    mobile: 20,
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.8,
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
                      style: responsiveTextStyle(
                        context,
                        desktop: Theme.of(context).textTheme.titleMedium,
                        tablet: Theme.of(context).textTheme.titleMedium,
                        mobile: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.8,
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
                      style: responsiveTextStyle(
                        context,
                        desktop: Theme.of(context).textTheme.titleMedium,
                        tablet: Theme.of(context).textTheme.titleMedium,
                        mobile: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontSize: 11),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
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
