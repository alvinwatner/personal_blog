import 'package:flutter/material.dart';

class JourneyTileLeft extends StatelessWidget {
  const JourneyTileLeft({
    Key? key,
    required this.mainWidth,
    required this.subHeight,
    required this.title,
    required this.subtitle,
    this.subsubtitle = "",
    this.imagePath,
  }) : super(key: key);

  final double mainWidth;
  final double subHeight;
  final String title;
  final String subtitle;
  final String subsubtitle;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: mainWidth / 2,
          height: subHeight,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.black,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                subtitle,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.grey.shade600),
              ),
              if (subsubtitle != "")
                Text(
                  subsubtitle,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.grey.shade600),
                ),
              if (imagePath != null)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  child: Image.asset(
                    imagePath!,
                    fit: BoxFit.scaleDown,
                  ),
                ),
            ],
          ),
        ),
        Container(
          width: mainWidth / 2,
          height: subHeight,
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 2,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

