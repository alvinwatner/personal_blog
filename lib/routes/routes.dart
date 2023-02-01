import 'package:flutter/material.dart';
import 'package:personal_blog/about_page.dart';
import 'package:personal_blog/features/home/views/pages/home_page.dart';
import 'package:personal_blog/features/ai_project/views/pages/list_ai_project_page.dart';
import 'package:personal_blog/features/mobile_app_project/views/pages/list_ma_project_page.dart';

final Map<String, Widget> routes = {
  HomePage.routeName: const HomePage(),
  AboutPage.routeName: const AboutPage(),
  ListAIProjectPage.routeName: const ListAIProjectPage(),
  ListMobileAppProjectPage.routeName: const ListMobileAppProjectPage(),
};