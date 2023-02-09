import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog/shared/responsive/utils.dart';
import 'package:personal_blog/shared/utils.dart';

class CircleContact extends StatelessWidget {
  final bool isEmail;
  final double tabletPadding;
  final double mobilePadding;
  final double desktopPadding;
  final double tabletIconsize;
  final double mobileIconsize;
  final double desktopIconsize;
  const CircleContact({
    Key? key,
    required this.url,
    required this.iconData,
    this.isEmail = false,
    this.desktopPadding = 4,
    this.tabletPadding = 2,
    this.mobilePadding = 0,
    this.desktopIconsize = 20,
    this.tabletIconsize = 25,
    this.mobileIconsize = 15,
  }) : super(key: key);

  final String url;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      padding: EdgeInsets.all(responsiveValue(
        context,
        desktop: desktopPadding,
        tablet: 0,
        mobile: 0,
      )),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () async {
          launchUrlCustom(
            url,
            isEmail: isEmail,
          );
        },
        icon: FaIcon(
          iconData,
          color: Colors.white,
          size: responsiveValue(
            context,
            desktop: desktopIconsize,
            tablet: tabletIconsize,
            mobile: mobileIconsize,
          ),
        ),
      ),
    );
  }
}
