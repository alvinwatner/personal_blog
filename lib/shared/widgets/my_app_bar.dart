import 'package:flutter/material.dart';
import 'package:personal_blog/about_page.dart';
import 'package:personal_blog/features/home/views/pages/home_page.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.blue.shade600,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.light_mode, color: Colors.white,),
    ),
    centerTitle: false,
    title: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(HomePage.routeName);
      },
      child: Text(
        "Alvin Watner",
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.routeName);
          },
          child: Text(
            "Home",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AboutPage.routeName);
          },
          child: Text(
            "About me",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}
