import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/businessLogic/hospital/hospital_bloc.dart';
import 'package:doc_online/userside/data/model/hopital/single_hospital.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';

import 'package:doc_online/userside/presentation/core/wisgets/doctor_details.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
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
                sliverAppBar(
                    state.hospitalDetails.data!.hospital!.image!.secureUrl!),
                SliverPadding(
                  padding: const EdgeInsets.all(15),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        space1h(),
                        cText1(state.hospitalDetails.data!.hospital!.name!),
                        space1h(),
                        labelText('Place'),
                        cText1(
                          state.hospitalDetails.data!.hospital!.place!,
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
                                      departmentCard(
                                          state.hospitalDetails.data!
                                              .departments![index].name!,
                                          state.hospitalDetails.data!
                                              .departments![index].id!,
                                          context),
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
                            state.hospitalDetails.data!.reviews!.isNotEmpty
                                ? ListView.separated(
                                    physics: const ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state
                                        .hospitalDetails.data!.reviews!.length,
                                    separatorBuilder: (context, index) =>
                                        space1h(),
                                    itemBuilder: (context, index) => review(
                                        state.hospitalDetails.data!
                                            .reviews![index].userId!.name!,
                                        state.hospitalDetails.data!
                                            .reviews![index].rating!,
                                        state.hospitalDetails.data!
                                            .reviews![index].review!))
                                : header1('no review')
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
