import 'package:flutter/material.dart';
import 'package:personal_blog/shared/widgets/circle_contact.dart';

class RowCircleContactTablet extends StatelessWidget {
  final IconData iconData;
  final String url;
  final bool isEmail;
  const RowCircleContactTablet(
    this.iconData, {
    required this.url,
    this.isEmail = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleContact(
              url: url,
              iconData: iconData,
              isEmail: isEmail,
              tabletPadding: 0,
              tabletIconsize: 15,
            ),
            Flexible(
                child: TextButton(
              onPressed: () {},
              child: Text(
                url,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.blue,
                    ),
              ),
            )),
          ],
        ),
      ],
    );
  }
}
