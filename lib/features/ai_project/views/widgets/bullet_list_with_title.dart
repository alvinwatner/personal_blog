import 'package:flutter/material.dart';

class BulltetListWithTitle extends StatelessWidget {
  final String title;
  final List<Widget> listItem;
  const BulltetListWithTitle({
    Key? key,
    required this.title,
    required this.listItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Divider(
          thickness: 2,
        ),
        ...listItem,
      ],
    );
  }
}
