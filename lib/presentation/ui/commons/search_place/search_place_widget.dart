import 'package:aero_delivery/domain/entities/place_entity.dart';
import 'package:aero_delivery/presentation/states/cubits/search_place_cubit.dart';
import 'package:aero_delivery/presentation/states/search_place_state.dart';
import 'package:aero_delivery/presentation/ui/commons/search_place/widgets/result_search_add_trip.dart';
import 'package:aero_delivery/presentation/ui/commons/search_place/widgets/textField_search_place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPlaceWidget extends StatelessWidget {
  final Function(PlaceEntity?) onclick;
  const SearchPlaceWidget({
    Key? key,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchPlaceCubit(
        googlePlaceRepository: context.read(),
      ),
      child: BlocBuilder<SearchPlaceCubit, SearchPlaceState>(
        builder: (context, state) {
          return Column(
            children: [
              TextFieldSearchTrip(
                  onChanged: (value) {
                    context.read<SearchPlaceCubit>().searchAirport(value);
                  },
                  onClear: () {
                    context.read<SearchPlaceCubit>().airportClear();
                    onclick(null);
                  },
                  hideText: (state is SearchPlaceStateSelected),
                  value: (state is SearchPlaceStateSelected)
                      ? state.airportSelected.name
                      : null),
              if (state is SearchPlaceStateLoading)
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CircularProgressIndicator(),
                ),
              if (state is SearchPlaceStateResult)
                ResultSearchAddTrip(
                  resultSearch: state.resultSearch,
                  onPressed: (value) {
                    context.read<SearchPlaceCubit>().airportSelected(value);
                    onclick(value);
                  },
                )
            ],
          );
        },
      ),
    );
  }
}
