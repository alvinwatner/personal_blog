import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog/features/about/views/widgets/row_circle_contact.dart';

class AboutDesktopLayout extends StatelessWidget {
  const AboutDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 9 / 13,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
                child: Image.asset(
                  'assets/images/profile_pict.jpg',
                  fit: BoxFit.fill,
                  // height: constraints.maxHeight,
                ),
              ),
            ),
          ),
          const SizedBox(
          width: 20.0,
          ),
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile Summary",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const Divider(
                  thickness: 2,
                ),
                const Text(
                  "I was previously an engineer in the car audio industry. Then I shift my focus into Artificial Intelligence area, working on a research project to pursue a PhD scholarship. Finally here I am, a Flutter Developer that has successfully built 2 e-commerce mobile applications from scratch on the Android & iOS platforms.",
                  style: TextStyle(letterSpacing: 1.0),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact & Social Media :",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            RowCircleContact(
                              FontAwesomeIcons.linkedin,
                              url: "https://www.linkedin.com/in/alvinwatner",
                            ),
                            RowCircleContact(
                              FontAwesomeIcons.google,
                              url: "alvinsetiadi22@gmail.com",
                              isEmail: true,
                            ),
                            RowCircleContact(
                              FontAwesomeIcons.github,
                              url: "http://github.com/alvinwatner",
                            ),
                            RowCircleContact(
                              FontAwesomeIcons.instagram,
                              url: "http://instagram.com/watneralvin/",
                            ),
                            RowCircleContact(
                              FontAwesomeIcons.twitter,
                              url: "http://twitter.com/WatnerAlvin",
                            ),
                          ]),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}