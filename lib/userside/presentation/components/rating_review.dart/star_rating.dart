import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => index < rating
            ? const Icon(
                Icons.star,
                color: Colors.amber,
              )
            : const Icon(
                Icons.star,
                color: Color.fromARGB(255, 179, 178, 175),
              ),
      ),
    );
  }
}
