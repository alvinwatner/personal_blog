import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog/shared/utils.dart';
import 'package:personal_blog/shared/widgets/circle_contact.dart';
import 'package:personal_blog/shared/widgets/my_app_bar.dart';

class AboutPage extends StatelessWidget {
  static const routeName = 'about';
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.7,
            child: LayoutBuilder(builder: (context, constraints) {
              return Wrap(
                children: [
                  // picture
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/profile_pict.jpg',
                        width: MediaQuery.of(context).size.width * 0.25,
                        // height: constraints.maxHeight,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  // text paragraph
                  Container(
                    // color: Colors.blue,
                    width: constraints.maxWidth * 0.5,
                    height: constraints.maxHeight,
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
                          height: 25.0,
                        ),
                        Container(
                          child: Column(
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
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    RowCircleContact(
                                      FontAwesomeIcons.linkedin,
                                      url:
                                          "https://www.linkedin.com/in/alvinwatner",
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
                            ],
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

class RowCircleContact extends StatelessWidget {
  final IconData iconData;
  final String url;
  final bool isEmail;
  const RowCircleContact(
    this.iconData, {
    required this.url,
    this.isEmail = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleContact(
          url: url,
          iconData: iconData,
          isEmail: isEmail,
        ),
        TextButton(
          onPressed: () {
            launchUrlCustom(
              url,
              isEmail: isEmail,
            );
          },
          child: Text(url),
        )
      ],
    );
  }
}
