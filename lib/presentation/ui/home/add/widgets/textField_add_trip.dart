import 'package:flutter/material.dart';

class TextFieldAddTrip extends StatefulWidget {
  final Function(String) onChanged;
  final Function() onClear;
  final bool hideText;
  final String? value;
  const TextFieldAddTrip({
    Key? key,
    required this.onChanged,
    required this.onClear,
    required this.hideText,
    required this.value,

  }) : super(key: key);

  @override
  State<TextFieldAddTrip> createState() => _TextFieldAddTripState();
}

class _TextFieldAddTripState extends State<TextFieldAddTrip> {
  final TextEditingController _searchAirportController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchAirportController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.done,
      controller: (widget.value != null)
          ? TextEditingController(text: widget.value)
          : _searchAirportController,
      readOnly: widget.hideText,
      onChanged: (value) => widget.onChanged(value),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF618985), width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF618985), width: 2.0),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            _searchAirportController.text = "";
            widget.onClear();
          },
          icon: const Icon(Icons.clear, color: Color(0xFF618985)),
        ),
      ),
    );
  }
}
