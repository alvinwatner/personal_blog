import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog/features/about/views/widgets/row_circle_contact_tablet.dart';

class AboutTabletLayout extends StatelessWidget {
  const AboutTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Container(
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
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
              width: 10.0,
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile Summary",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                   Text(
                    "I was previously an engineer in the car audio industry. Then I shift my focus into Artificial Intelligence area, working on a research project to pursue a PhD scholarship. Finally here I am, a Flutter Developer that has successfully built 2 e-commerce mobile applications from scratch on the Android & iOS platforms.",
                    style: Theme.of(context).textTheme.bodyMedium
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
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
                  const RowCircleContactTablet(
                    FontAwesomeIcons.linkedin,
                    url: "https://www.linkedin.com/in/alvinwatner",
                  ),
                  const RowCircleContactTablet(
                    FontAwesomeIcons.google,
                    url: "alvinsetiadi22@gmail.com",
                  ),
                  const RowCircleContactTablet(
                    FontAwesomeIcons.github,
                    url: "http://github.com/alvinwatner",
                  ),
                  const RowCircleContactTablet(
                    FontAwesomeIcons.instagram,
                    url: "http://instagram.com/watneralvin/",
                  ),
                  const RowCircleContactTablet(
                    FontAwesomeIcons.twitter,
                    url: "http://twitter.com/WatnerAlvin",
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
