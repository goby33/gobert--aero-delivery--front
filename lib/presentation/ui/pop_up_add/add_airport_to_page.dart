import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddAirportToPage extends StatelessWidget {
  AddAirportToPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF618985),
        title: const Text('Add a package to send'),
      ),
      backgroundColor: const Color(0XFFEDF4ED),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'TO Airport ?  ',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Nunito',
                color: Color(0xFFF79F79),
              ),
            ),
            //
            // TextField search  + search icon in the right + result list
            TextField(
              style: const TextStyle(
                color: Color(0xFF618985),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF618985)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: IconButton(
                  color: const Color(0xFF618985),
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 3, color: Color(0xFF618985)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => context.push('/add/mmmmm/pppp'),
              child: const Center(
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
