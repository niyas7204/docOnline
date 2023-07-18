import 'package:doc_online/doctorside/data/data/data_providers/response/status.dart';
import 'package:doc_online/doctorside/presentation/core/widgets.dart';

import 'package:doc_online/userside/businessLogic/search/search_bloc.dart';
import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';

import 'package:doc_online/userside/presentation/functions/enum.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SearchBloc>(context).add(const SearchEvent.doctorSearch());

    final TextEditingController searchController = TextEditingController();
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Column(
              children: [
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () => searchController.clear(),
                        ),
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            BlocProvider.of<SearchBloc>(context).add(
                                SearchEvent.onDoctorSearch(
                                    doctorList:
                                        state.doctorsList!.data!.doctors!,
                                    query: searchController.text));
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
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
                            if (state.hospitalList != null) {
                              switch (state.hospitalList!.status) {
                                case Status.loading:
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                case Status.error:
                                  return const SizedBox();
                                case Status.complete:
                                  return Container(
                                    height: 500,
                                    width: 300,
                                    color: Colors.amber,
                                  );
                                default:
                                  return const SizedBox();
                              }
                            } else {
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) => doctersCard(
                state.isSearch
                    ? state.doctorResult!
                    : state.doctorsList!.data!.doctors!,
                index,
                context),
            separatorBuilder: (context, index) => space1h(),
            itemCount: state.isSearch
                ? state.doctorResult!.length
                : state.doctorsList!.data!.doctors!.length),
      ),
    );
  }
}
