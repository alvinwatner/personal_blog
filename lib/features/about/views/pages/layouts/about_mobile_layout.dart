import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:alvinwatner/features/about/views/widgets/row_circle_contact_tablet.dart';

class AboutMobileLayout extends StatelessWidget {
  const AboutMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_pict.jpg'),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              "Profile Summary",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(
              thickness: 2,
            ),
            Text(
              "I was previously an engineer in the car audio industry. Then I shift my focus into Artificial Intelligence area, working on a research project to pursue a PhD scholarship. Finally here I am, a Flutter Developer that has successfully built 2 e-commerce mobile applications from scratch on the Android & iOS platforms.",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(letterSpacing: 1.0),
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

            // AspectRatio(
            //   aspectRatio: 10 / 14,
            //   child: Container(
            //     // color: Colors.red,
            //     child: ClipRRect(
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(14.0),
            //       ),
            //       child: Image.asset(
            //         'assets/images/profile_pict.jpg',
            //         fit: BoxFit.fill,
            //         // height: constraints.maxHeight,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
