import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:aero_delivery/presentation/ui/commons/avatar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddTripPage extends StatefulWidget {
  const AddTripPage({Key? key}) : super(key: key);

  @override
  State<AddTripPage> createState() => _AddTripPageState();
}

class _AddTripPageState extends State<AddTripPage> {
  final TextEditingController _searchAirportController =
      TextEditingController();

  @override
  void dispose() {
    _searchAirportController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PopUpAddTripCubit(
        googlePlaceRepository: context.read(),
      ),
      child: BlocListener<PopUpAddTripCubit, PopUpAddTripState>(
        listener: (context, state) => state.maybeMap(
          addAirportFromReady: (value) => context.push('/add/paris'),
          orElse: () => debugPrintDone,
        ),
        child: BlocBuilder<PopUpAddTripCubit, PopUpAddTripState>(
          builder: (context, state) {
            //button to add a package
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("What's your airport of departure ?",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          color: Color(0xFFF79F79))),
                  SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        TextField(
                          controller: _searchAirportController,
                          readOnly: (state
                              is PopUpAddTripStateAddAirportFromSelected),
                          onChanged: (value) => context
                              .read<PopUpAddTripCubit>()
                              .searchAirport(value),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Airport',
                            suffixIcon: IconButton(
                              onPressed: () {
                                _searchAirportController.text = "";
                                context
                                    .read<PopUpAddTripCubit>()
                                    .clearAirportFrom();
                              },
                              icon: const Icon(Icons.clear),
                            ),
                          ),
                        ),
                        if (state is PopUpAddTripStateLoading)
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: CircularProgressIndicator(),
                          ),
                        if (state is PopUpAddTripStateAirportResultSearch)
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFFd8dbe2),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(20))),
                            constraints: const BoxConstraints(maxHeight: 200),
                            child: (state.resultSearch.isEmpty)
                                ? const Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.0,
                                        left: 100.0,
                                        right: 100.0,
                                        bottom: 8.0),
                                    child: Text("sorry, no result"),
                                  )
                                : ListView.builder(
                                    itemCount: state.resultSearch.length,
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () async {
                                        await context
                                            .read<PopUpAddTripCubit>()
                                            .addAirportFrom(state
                                                .resultSearch[index].name!);
                                        _searchAirportController.text =
                                            state.resultSearch[index].name!;
                                      },
                                      leading: Avatar(
                                          path: state.resultSearch[index].icon),
                                      title: Text(
                                          state.resultSearch[index].name ?? ""),
                                      subtitle: const Text("Airport"),
                                    ),
                                  ),
                          ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed:
                        (state is PopUpAddTripStateAddAirportFromSelected)
                            ? () => context
                                .read<PopUpAddTripCubit>()
                                .addAirportFrom(state.trip?.airportFrom ?? "")
                            : null,
                    child: const Text('Continue'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
