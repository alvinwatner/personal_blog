import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog/shared/utils.dart';

class CircleContact extends StatelessWidget {
  final bool isEmail;
  const CircleContact({
    Key? key,
    required this.url,
    required this.iconData,
    this.isEmail = false,
  }) : super(key: key);

  final String url;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          size: MediaQuery.of(context).size.width * 0.01,
        ),
      ),
    );
  }
}
