import 'package:doc_online/core/debouncer.dart';
import 'package:doc_online/core/helpers/enum.dart';
import 'package:doc_online/core/responsehandler/status.dart';

import 'package:doc_online/userside/bussinesslogic/search/search_bloc.dart';
import 'package:doc_online/components/card_components/doctor_card.dart';
import 'package:doc_online/components/card_components/hospital_card.dart';

import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 1000);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.doctorSearch());
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.hospitalSearch());
    });

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoSearchTextField(
                    backgroundColor: Colors.grey.withOpacity(.4),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                        color: Colors.grey),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onChanged: (value) {
                      if (value.isEmpty) {
                        return;
                      }
                      debouncer.run(() {
                        state.searchSelection == SearchSelection.doctors
                            ? BlocProvider.of<SearchBloc>(context).add(
                                SearchEvent.onDoctorSearch(
                                    doctorList:
                                        state.doctorsList!.data!.doctors!,
                                    query: value))
                            : BlocProvider.of<SearchBloc>(context).add(
                                SearchEvent.onHospitalSearch(
                                    hospitalList:
                                        state.hospitalList!.data!.hospitals!,
                                    query: value));
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                state.searchSelection == SearchSelection.doctors
                                    ? const Color.fromARGB(255, 101, 131, 146)
                                    : Colors.white),
                        onPressed: () {
                          BlocProvider.of<SearchBloc>(context)
                              .add(const SearchEvent.doctorSearch());
                        },
                        child: CustomTexts.text20('Doctors')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: state.searchSelection ==
                                    SearchSelection.hospitals
                                ? const Color.fromARGB(255, 101, 131, 146)
                                : Colors.white),
                        onPressed: () {
                          BlocProvider.of<SearchBloc>(context)
                              .add(const SearchEvent.hospitalSearch());
                        },
                        child: CustomTexts.text20('Hospitals')),
                  ],
                ),
                Builder(
                  builder: (context) {
                    switch (state.searchSelection) {
                      case SearchSelection.doctors:
                        return Builder(
                          builder: (context) {
                            switch (state.doctorsList!.status) {
                              case ApiStatus.loading:
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              case ApiStatus.error:
                                return const SizedBox();
                              case ApiStatus.complete:
                                return doctors(state);
                              default:
                                return const SizedBox();
                            }
                          },
                        );
                      case SearchSelection.hospitals:
                        return Builder(
                          builder: (context) {
                            switch (state.hospitalList!.status) {
                              case ApiStatus.loading:
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              case ApiStatus.error:
                                return const SizedBox();
                              case ApiStatus.complete:
                                return hospitals(state);
                              default:
                                return const SizedBox();
                            }
                          },
                        );
                      default:
                        return const SizedBox();
                    }
                  },
                ),
              ],
            ));
          },
        ));
      },
    );
  }

  Expanded doctors(SearchState state) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) => DoctorCard(
                doctors: state.isSearch
                    ? state.doctorResult!.data!
                    : state.doctorsList!.data!.doctors!,
                index: index),
            separatorBuilder: (context, index) => SpaceSized.space1h,
            itemCount: state.isSearch
                ? state.doctorResult!.data!.length
                : state.doctorsList!.data!.doctors!.length),
      ),
    );
  }

  hospitals(SearchState state) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: (50 / 80)),
          itemCount: state.isSearch
              ? state.hospitalResult!.data!.length
              : state.hospitalList!.data!.hospitals!.length,
          itemBuilder: (context, index) {
            var hospitalData = state.isSearch
                ? state.hospitalResult!.data![index]
                : state.hospitalList!.data!.hospitals![index];
            var rating = state.isSearch
                ? state.hospitalList!.data!
                    .rating!['${state.hospitalResult!.data![index].id}']
                : state.hospitalList!.data!.rating![
                    '${state.hospitalList!.data!.hospitals![index].id}'];
            int roundedRating = rating?.round() ?? 0;
            return HospitalCard(
                hospitalData: hospitalData, rating: roundedRating);
          }),
    );
  }
}
