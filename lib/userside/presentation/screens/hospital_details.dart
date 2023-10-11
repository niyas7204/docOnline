import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/doctorside/data/model/doctorprofilemodel.dart';

import 'package:doc_online/userside/bussinesslogic/hospital/hospital_bloc.dart';
import 'package:doc_online/userside/data/model/hopital/single_hospital.dart';
import 'package:doc_online/userside/presentation/components/card_components/department_card.dart';

import 'package:doc_online/userside/presentation/components/rating_review.dart/addrating.dart';

import 'package:doc_online/userside/presentation/components/doctor_details.dart';
import 'package:doc_online/userside/presentation/components/rating_review.dart/review.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HospitalDetailsScreen extends StatelessWidget {
  final String hospitalId;
  const HospitalDetailsScreen({Key? key, required this.hospitalId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userBloc = BlocProvider.of<HospitalBloc>(context);
      userBloc.add(HospitalEvent.getHospitalDetails(hospitalId: hospitalId));
    });
    return BlocBuilder<HospitalBloc, HospitalState>(
      builder: (context, state) {
        SingleHospital hospitalDetails = state.hospitalDetails.data!;
        switch (state.hospitalDetails.status) {
          case ApiStatus.error:
            return const SizedBox();
          case ApiStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ApiStatus.complete:
            return Scaffold(
                body: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                sliverAppBar(hospitalDetails.hospital!.image!.secureUrl!),
                SliverPadding(
                  padding: const EdgeInsets.all(15),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        SpaceSized.space1h(),
                        CustomTexts.commonText1(
                            hospitalDetails.hospital!.name!),
                        SpaceSized.space1h(),
                        CustomTexts.labelText('Place'),
                        CustomTexts.commonText1(
                          hospitalDetails.hospital!.place!,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Departments',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 170,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.hospitalDetails.data!
                                      .departments!.length,
                                  itemBuilder: (context, index) =>
                                      DepartmentCard(
                                    dpName: hospitalDetails
                                        .departments![index].name!,
                                    id: hospitalDetails.departments![index].id!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Rating and Review',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          children: [
                            hospitalDetails.review != null
                                ? AddRating(
                                    rating: hospitalDetails.rating!.toInt(),
                                    id: hospitalDetails.review!.hospitalId!,
                                    review: hospitalDetails.review!.review!,
                                    fieldtype: EditType.hospital)
                                : const SizedBox(),
                            hospitalDetails.reviews!.isNotEmpty
                                ? ListView.separated(
                                    physics: const ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state
                                        .hospitalDetails.data!.reviews!.length,
                                    separatorBuilder: (context, index) =>
                                        SpaceSized.space1h(),
                                    itemBuilder: (context, index) => ViewReview(
                                        profile: hospitalDetails
                                            .reviews![index].userId!.name!,
                                        rating: hospitalDetails
                                            .reviews![index].rating!,
                                        review: hospitalDetails
                                            .reviews![index].review!))
                                : CustomTexts.header1('no review')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
