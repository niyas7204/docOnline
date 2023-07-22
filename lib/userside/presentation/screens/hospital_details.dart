import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';

import 'package:doc_online/userside/presentation/core/wisgets/doctor_details.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HospitalDetails extends StatelessWidget {
  final String hospitalId;
  const HospitalDetails({Key? key, required this.hospitalId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userBloc = BlocProvider.of<UsersideBloc>(context);
      userBloc.add(UsersideEvent.getHospitalDetails(hospitalId: hospitalId));
    });
    return BlocBuilder<UsersideBloc, UsersideState>(
      builder: (context, state) {
        return Scaffold(
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.hospitalDetails != null
                  ? CustomScrollView(
                      shrinkWrap: true,
                      slivers: [
                        sliverAppBar(
                            state.hospitalDetails!.hospital!.image!.secureUrl!),
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              space1h(),
                              cText1(state.hospitalDetails!.hospital!.name!),
                              cText1(
                                state.hospitalDetails!.hospital!.address!,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 170,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: state.hospitalDetails!
                                            .departments!.length,
                                        itemBuilder: (context, index) =>
                                            departmentCard(
                                                state.hospitalDetails!
                                                    .departments![index].name!,
                                                state.hospitalDetails!
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
                                  state.hospitalDetails!.reviews!.isNotEmpty
                                      ? ListView.separated(
                                          physics: const ScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: state
                                              .hospitalDetails!.reviews!.length,
                                          separatorBuilder: (context, index) =>
                                              space1h(),
                                          itemBuilder: (context, index) =>
                                              review(
                                                  state
                                                      .hospitalDetails!
                                                      .reviews![index]
                                                      .userId!
                                                      .name!,
                                                  state.hospitalDetails!
                                                      .reviews![index].rating!,
                                                  state.hospitalDetails!
                                                      .reviews![index].review!))
                                      : header1('no review')
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
        );
      },
    );
  }
}
