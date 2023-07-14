
import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UsersideBloc>(context)
        .add(const UsersideEvent.getDoctors());
    String isSearch = 'doctor';
    final TextEditingController searchController = TextEditingController();
    return BlocBuilder<UsersideBloc, UsersideState>(
      builder: (context, state) {
        return Scaffold(
          body: state.isLoading
              ? const CircularProgressIndicator()
              : state.doctors != null
                  ? SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
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
                                    onPressed: () {},
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: isSearch == 'doctor'
                                          ? const Color.fromARGB(
                                              255, 101, 131, 146)
                                          : Colors.white),
                                  onPressed: () {},
                                  child: text20('Doctors')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: isSearch == 'hospital'
                                          ? const Color.fromARGB(
                                              255, 101, 131, 146)
                                          : Colors.white),
                                  onPressed: () {
                                    isSearch = 'hospital';
                                  },
                                  child: text20('Hospitals')),
                            ],
                          ),
                          Builder(
                            builder: (context) {
                              return Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListView.separated(
                                      itemBuilder: (context, index) =>
                                          doctersCard(state.doctors!.doctors!,
                                              index, context),
                                      separatorBuilder: (context, index) =>
                                          space1h(),
                                      itemCount:
                                          state.doctors!.doctors!.length),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
        );
      },
    );
  }
}
