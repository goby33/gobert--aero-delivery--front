import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TripViewPage extends StatelessWidget {
  final String id;
  const TripViewPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.go('/'),
        ),
        title: Text('TripViewPage'),
      ),
      body: Center(child: Text('TripViewPage')),
    );
  }
}
