import 'package:doc_online/components/rating_review.dart/star_rating.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';

class ViewReview extends StatelessWidget {
  final String profile;
  final int rating;
  final String review;
  const ViewReview(
      {super.key,
      required this.profile,
      required this.rating,
      required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 100, maxWidth: 300),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 231, 233, 236),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor:
                  const Color.fromARGB(255, 131, 149, 163).withOpacity(.2),
              radius: 30,
              child: const Icon(Icons.person_2_sharp),
            ),
            SpaceSized.space1w,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTexts.text20(
                    'ls hlfsdkjfhglkjdgh skjghlgjsdglsdjkgsd gjklggl'),
                CustomTexts.text20(profile),
                SizedBox(child: StarRating(rating: rating)),
                CustomTexts.text20(review),
              ],
            )
          ],
        ),
      ),
    );
  }
}
