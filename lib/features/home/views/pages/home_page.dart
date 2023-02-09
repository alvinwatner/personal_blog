import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog/features/home/views/widgets/project_categories_button.dart';
import 'package:personal_blog/shared/widgets/circle_contact.dart';
import 'package:personal_blog/shared/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/home-background.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Spacer(),              
              const ProjectCategoriesButton(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: const CircleContact(
                      iconData: FontAwesomeIcons.linkedin,
                      url: "https://www.linkedin.com/in/alvinwatner",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: const CircleContact(
                      iconData: FontAwesomeIcons.google,
                      url: "alvinsetiadi22@gmail.com",
                      isEmail: true,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: const CircleContact(
                      iconData: FontAwesomeIcons.github,
                      url: "http://github.com/alvinwatner",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: const CircleContact(
                      iconData: FontAwesomeIcons.instagram,
                      url: "http://instagram.com/watneralvin/",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: const CircleContact(
                      iconData: FontAwesomeIcons.twitter,
                      url: "http://twitter.com/WatnerAlvin",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
