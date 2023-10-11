import 'package:doc_online/userside/data/model/hopital/hospital_model.dart';
import 'package:doc_online/components/rating_review.dart/star_rating.dart';
import 'package:doc_online/userside/presentation/screens/hospital_details.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as prefix;

class HospitalCard extends StatelessWidget {
  final HospitalDeatails hospitalData;
  final int rating;
  const HospitalCard(
      {super.key, required this.hospitalData, required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HospitalDetailsScreen(
                  hospitalId: hospitalData.id!,
                )));
      },
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: SizedBox(
          height: 220,
          width: 166,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: prefix.Image.network(
                  hospitalData.image!.secureUrl!,
                  fit: BoxFit.cover,
                  width: 166,
                  height: 120,
                ),
              ),
              SpaceSized.space1h,
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hospitalData.name![0].toUpperCase() +
                          hospitalData.name!.substring(1),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    StarRating(rating: rating),
                    Text(
                      hospitalData.address!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
