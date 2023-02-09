import 'package:flutter/material.dart';
import 'package:alvinwatner/shared/utils.dart';

class BulletItem extends StatelessWidget {
  final String url;
  final String text;
  final String year;
  const BulletItem({
    Key? key,
    required this.url,
    required this.text,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    launchUrlCustom(url);
                  },
                  child: Text(
                    "• $text",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          // Spacer(),
          Text(year),
        ],
      ),
    );
  }
}
