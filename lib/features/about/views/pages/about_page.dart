import 'package:flutter/material.dart';
import 'package:personal_blog/features/about/views/pages/layouts/about_desktop_layout.dart';
import 'package:personal_blog/features/about/views/pages/layouts/about_mobile_layout.dart';
import 'package:personal_blog/features/about/views/pages/layouts/about_tablet_layout.dart';
import 'package:personal_blog/shared/responsive/responsive_wrapper.dart';
import 'package:personal_blog/shared/widgets/my_app_bar.dart';

class AboutPage extends StatelessWidget {
  static const routeName = 'about';
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const ResponsiveBuilder(
        tabletBreakpoint: 1100,
        mobileBreakpoint: 615,
        mobileBody: AboutMobileLayout(),
        desktopBody: AboutDesktopLayout(),
        tabletBody: AboutTabletLayout(),
      ),
    );
  }
}
