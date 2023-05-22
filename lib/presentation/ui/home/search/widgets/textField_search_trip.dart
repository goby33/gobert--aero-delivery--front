import 'package:flutter/material.dart';

class TextFieldSearchTrip extends StatefulWidget {
  TextFieldSearchTrip({Key? key}) : super(key: key);

  @override
  _TextFieldSearchTripState createState() {
    return _TextFieldSearchTripState();
  }
}

class _TextFieldSearchTripState extends State<TextFieldSearchTrip> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 200,
      child: TextField(
        textInputAction: TextInputAction.done,
        controller: TextEditingController(),
        readOnly: false,
        onChanged: (value) {},
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF618985), width: 2.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF618985), width: 2.0),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear, color: Color(0xFF618985)),
          ),
        ),
      ),
    );
  }
}
