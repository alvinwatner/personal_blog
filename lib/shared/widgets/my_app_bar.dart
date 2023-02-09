import 'package:flutter/material.dart';
import 'package:alvinwatner/features/about/views/pages/about_page.dart';
import 'package:alvinwatner/features/home/views/pages/home_page.dart';
import 'package:alvinwatner/shared/responsive/utils.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    leadingWidth: responsiveValue(
      context,
      desktop: 30,
      tablet: 30,
      mobile: 15,
    ),
    backgroundColor: Colors.blue.shade600,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.light_mode,
        color: Colors.white,
        size: responsiveValue(
          context,
          desktop: 24,
          tablet: 22,
          mobile: 20,
        ),
      ),
    ),
    centerTitle: false,
    title: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(HomePage.routeName);
      },
      child: Text(
        "Alvin Watner",
        style: responsiveTextStyle(context,
            desktop: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                ),
            tablet: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                ),
            mobile: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white, fontSize: 10)),
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
            style: responsiveTextStyle(context,
                desktop: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
                tablet: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
                mobile: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white, fontSize: 10)),
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
            style: responsiveTextStyle(context,
                desktop: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                tablet: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                mobile: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.white, fontSize: 10)),
          ),
        ),
      ),
    ],
  );
}
