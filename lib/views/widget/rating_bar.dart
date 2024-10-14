
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;

  const RatingBar({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star_rate_rounded,
              size: 15,
              color: index < rating ? Colors.amber : Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text('($rating)'),
      ],
    );
  }
}