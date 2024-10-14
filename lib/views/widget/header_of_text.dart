import 'package:flutter/material.dart';

class HeaderOfList extends StatelessWidget {
  final String title;
  final String description;
  const HeaderOfList({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 17,
                    color: const Color(0xff9B9B9B),
                  ),
            ),
          ],
        ),
        InkWell(
          child: Text(
            "view All",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 17,
                  color: Colors.black,
                ),
          ),
        ),
      ],
    );
  }
}
