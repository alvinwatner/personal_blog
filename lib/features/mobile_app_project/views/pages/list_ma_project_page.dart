import 'package:flutter/material.dart';
import 'package:alvinwatner/features/mobile_app_project/views/pages/layouts/list_ma_project_desktop_layout.dart';
import 'package:alvinwatner/features/mobile_app_project/views/pages/layouts/list_ma_project_mobile_layout.dart';
import 'package:alvinwatner/shared/widgets/my_app_bar.dart';

class ListMobileAppProjectPage extends StatelessWidget {
  static const routeName = 'list-mobile-app-project';
  const ListMobileAppProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildAppBar(context),
      body: (screenWidth > 650)
          ? const ListMAProjectDesktopLayout()
          : const ListMAProjectMobileLayout(),
    );
  }
}
