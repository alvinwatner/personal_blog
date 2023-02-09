import 'package:flutter/material.dart';
import 'package:alvinwatner/shared/utils.dart';
import 'package:alvinwatner/shared/widgets/circle_contact.dart';

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
        Flexible(
          child: TextButton(
            onPressed: () {
              launchUrlCustom(
                url,
                isEmail: isEmail,
              );
            },
            child: Text(
              url,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,              
            ),
          ),
        )
      ],
    );
  }
}
