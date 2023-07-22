import 'dart:developer';

import 'package:doc_online/core/debouncer.dart';
import 'package:doc_online/doctorside/data/data_providers/response/status.dart';

import 'package:doc_online/userside/presentation/core/widgets.dart';

import 'package:doc_online/userside/businessLogic/search/search_bloc.dart';
import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';

import 'package:doc_online/userside/presentation/functions/enum.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 1000);
    BlocProvider.of<SearchBloc>(context).add(const SearchEvent.doctorSearch());

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Column(
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
                      color: Colors.white,
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
                        child: text20('Doctors')),
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
                        child: text20('Hospitals')),
                  ],
                ),
                Builder(
                  builder: (context) {
                    switch (state.searchSelection) {
                      case SearchSelection.doctors:
                        return Builder(
                          builder: (context) {
                            switch (state.doctorsList!.status) {
                              case Status.loading:
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              case Status.error:
                                return const SizedBox();
                              case Status.complete:
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
                              case Status.loading:
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              case Status.error:
                                return const SizedBox();
                              case Status.complete:
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
            );
          },
        )));
      },
    );
  }

  Expanded doctors(SearchState state) {
    log(state.isSearch.toString());
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) => doctersCard(
                state.isSearch
                    ? state.doctorResult!.data!
                    : state.doctorsList!.data!.doctors!,
                index,
                context),
            separatorBuilder: (context, index) => space1h(),
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
        itemBuilder: (context, index) => hospitalCard(
            state.isSearch
                ? state.hospitalResult!.data![index].name!
                : state.hospitalList!.data!.hospitals![index].name!,
            state.isSearch
                ? state.hospitalResult!.data![index].image!.secureUrl!
                : state.hospitalList!.data!.hospitals![index].image!.secureUrl!,
            state.isSearch
                ? state.hospitalResult!.data![index].address!
                : state.hospitalList!.data!.hospitals![index].address!,
            context,
            state.isSearch
                ? state.hospitalResult!.data![index].address!
                : state.hospitalList!.data!.hospitals![index].id!),
      ),
    );
  }
}
