import 'package:flutter/material.dart';
import 'package:personal_blog/shared/utils.dart';

class BulletItem extends StatelessWidget {
  final double width;
  final String url;
  final String text;
  final String year;
  const BulletItem({
    Key? key,
    required this.width,
    required this.url,
    required this.text,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(      
      children: [
        SizedBox(
          width: width,
          child: TextButton(
            onPressed: () {
              launchUrlCustom(url);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "• $text",
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        Text(year),
      ],
    );
  }
}
