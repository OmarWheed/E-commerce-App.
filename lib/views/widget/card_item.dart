import 'package:ecommerce_app/views/widget/Rating_bar.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 184,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.green,
                width: 1,
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/girl_img.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 8,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffDB3022),
                    ),
                    height: 24,
                    width: 40,
                    child: const Text(
                      "-20%",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: -18,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    radius: 18,
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
          const RatingBar(
            rating: 10,
          ),
          Text(
            "Dorothy Perkins",
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.grey, fontSize: 11),
          ),
          Text(
            "Evening Dress",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          RichText(
            text: const TextSpan(children: [
              TextSpan(
                text: r"15$",
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              TextSpan(
                text: r" 12$",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}