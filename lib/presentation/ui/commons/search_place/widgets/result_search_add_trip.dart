import 'package:aero_delivery/domain/entities/place_entity.dart';
import 'package:aero_delivery/presentation/ui/commons/avatar.dart';
import 'package:flutter/material.dart';

class ResultSearchAddTrip extends StatefulWidget {
  final Function(PlaceEntity) onPressed;
  final List<PlaceEntity> resultSearch;
  const ResultSearchAddTrip({
    Key? key,
    required this.onPressed,
    required this.resultSearch,
  }) : super(key: key);

  @override
  State<ResultSearchAddTrip> createState() => _ResultSearchAddTripState();
}

class _ResultSearchAddTripState extends State<ResultSearchAddTrip> {
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
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFd8dbe2),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      constraints: const BoxConstraints(maxHeight: 200),
      child: (widget.resultSearch.isEmpty)
          ? const Padding(
              padding: EdgeInsets.only(
                  top: 8.0, left: 100.0, right: 100.0, bottom: 8.0),
              child: Text("sorry, no result"),
            )
          : ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black,
              ),
              itemCount: widget.resultSearch.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () async {
                  await widget.onPressed(widget.resultSearch[index]);
                  _searchAirportController.text =
                      widget.resultSearch[index].name!;
                },
                leading: Avatar(path: widget.resultSearch[index].icon),
                title: Text(widget.resultSearch[index].name ?? ""),
                subtitle: const Text("Airport"),
              ),
            ),
    );
  }
}
