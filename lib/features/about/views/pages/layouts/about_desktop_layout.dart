import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:alvinwatner/features/about/views/widgets/row_circle_contact.dart';

import '../../widgets/journey_tile_left.dart';
import '../../widgets/journey_tile_right.dart';

class AboutDesktopLayout extends StatelessWidget {
  const AboutDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Center(
            child: Container(
              // color: Colors.blue,
              width: 1200,
              height: 500,
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
                            ),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Divider(thickness: 2,),
          const Center(
            child: Journey(),
          )
        ],
      ),
    );
  }
}

class Journey extends StatelessWidget {
  final double mainWidth = 1200;
  final double subHeight = 200;
  const Journey({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mainWidth,
      child: Column(
        children: [
          Text(
            "Experiences",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
          height: 20.0,
          ),
          JourneyTileRight(
            title: "   2016 - 2020",
            subtitle: "   Car Audio Engineer",
            subsubtitle: "   Grand Audio",
            imagePath: 'assets/images/grandaudio.png',
            mainWidth: mainWidth,
            subHeight: 400,
          ),
          const SizedBox(
            height: 10.0,
          ),
          JourneyTileLeft(
            title: "2020 - 2021   ",
            subtitle: "Pursue LPDP Scholarship (failed *sigh)   ",
            imagePath: 'assets/images/lpdp.png',
            mainWidth: mainWidth,
            subHeight: 300,
          ),
          const SizedBox(
            height: 10.0,
          ),
          JourneyTileRight(
            title: "   2021 - 2022",
            subtitle: "   Flutter Developer",
            subsubtitle: "   RADATIME",
            imagePath: 'assets/images/radatime.jpeg',
            mainWidth: mainWidth,
            subHeight: 300,
          ),
          const SizedBox(
            height: 10.0,
          ),
          JourneyTileLeft(
            title: "2022 - 2023   ",
            subtitle: "Flutter Developer   ",
            subsubtitle: "Booble Mitra Kreatif   ",
            mainWidth: mainWidth,
            subHeight: 100,
          ),
          const SizedBox(
            height: 10.0,
          ),
          JourneyTileRight(
            title: "   2023 - Present",
            subtitle: "   Flutter Developer",
            subsubtitle: "   JOBSEEKER",
            mainWidth: mainWidth,
            subHeight: 100,
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}

