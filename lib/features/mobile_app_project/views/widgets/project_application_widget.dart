import 'package:flutter/material.dart';
import 'package:personal_blog/features/mobile_app_project/models/slider_item.dart';
import 'package:personal_blog/features/mobile_app_project/views/widgets/phone_slider.dart';
import 'package:personal_blog/shared/utils.dart';

class ProjectApplicationWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final List<TableRow> featuresRow;
  final List<SliderItem> sliderItems;
  final String playstoreUrl;
  final String appstoreUrl;
  final String companyProfileUrl;
  final bool isRight;
  const ProjectApplicationWidget({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.featuresRow,
    required this.sliderItems,
    this.playstoreUrl = "",
    this.appstoreUrl = "",
    this.isRight = false,
    required this.companyProfileUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            (!isRight)
                ? Container(
                    // color: Colors.yellow,
                    width: MediaQuery.of(context).size.width * 0.4,
                    // height: MediaQuery.of(context).size.width * 0.4,
                    child: PhoneSlider(
                      sliderItems: sliderItems,
                    ),
                  )
                : Container(),
            Container(
              // color: Colors.orange,
              width: MediaQuery.of(context).size.width * 0.5,
              // height: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Description : ",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600,
                        ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.grey.shade600),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Highlighted Features : ",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600,
                        ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        children: const [
                          Center(
                              child: Text(
                            "NAME",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          Center(
                              child: Text(
                            "Third Party",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          Center(
                              child: Text(
                            "Package",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ],
                      ),
                      ...featuresRow,
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.android),
                          const Text("  Playstore :"),
                          TextButton(
                            onPressed: () {
                              if (playstoreUrl != "") {
                                launchUrlCustom(
                                  playstoreUrl,
                                );
                              }
                            },
                            child: Text((playstoreUrl != "") ? "Link" : "-"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.apple),
                          const Text("  Appstore :"),
                          TextButton(
                            onPressed: () {
                              if (appstoreUrl != "") {
                                launchUrlCustom(
                                  appstoreUrl,
                                );
                              }
                            },
                            child: const Text("-"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.house),
                          const Text("  Website :"),
                          TextButton(
                            onPressed: () {
                              launchUrlCustom(
                                companyProfileUrl,
                              );
                            },
                            child: const Text("link"),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            (isRight)
                ? Container(
                    // color: Colors.yellow,
                    width: MediaQuery.of(context).size.width * 0.4,
                    // height: MediaQuery.of(context).size.width * 0.4,
                    child: PhoneSlider(
                      sliderItems: sliderItems,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
