import 'package:flutter/material.dart';
import 'package:alvinwatner/features/about/views/pages/about_page.dart';
import 'package:alvinwatner/features/home/views/pages/home_page.dart';
import 'package:alvinwatner/features/ai_project/views/pages/list_ai_project_page.dart';
import 'package:alvinwatner/features/mobile_app_project/views/pages/list_ma_project_page.dart';

final Map<String, Widget> routes = {
  HomePage.routeName: const HomePage(),
  AboutPage.routeName: const AboutPage(),
  ListAIProjectPage.routeName: const ListAIProjectPage(),
  ListMobileAppProjectPage.routeName: const ListMobileAppProjectPage(),
};