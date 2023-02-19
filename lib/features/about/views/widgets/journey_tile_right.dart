import 'package:flutter/material.dart';

class JourneyTileRight extends StatelessWidget {
  const JourneyTileRight({
    Key? key,
    required this.mainWidth,
    required this.subHeight,
    required this.title,
    required this.subtitle,
    required this.subsubtitle,
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
              right: BorderSide(
                width: 2,
                color: Colors.black,
              ),
            ),
          ),
        ),
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
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    subsubtitle,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.grey.shade600),
                  ),
                ],
              ),
              const Spacer(),
              if (imagePath != null)
                Image.asset(
                  imagePath!,
                  fit: BoxFit.cover,
                )
            ],
          ),
        ),
      ],
    );
  }
}
