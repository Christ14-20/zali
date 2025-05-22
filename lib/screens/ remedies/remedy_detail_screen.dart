import 'package:flutter/material.dart';

class RemedyDetailScreen extends StatelessWidget {
  const RemedyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final remedy = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    return Scaffold(
      appBar: AppBar(title: const Text('Remedy Details')),
      body: Center(
        child: Text(remedy != null
            ? 'Details for ${remedy['name']}'
            : 'No remedy data provided.'),
      ),
    );
  }
}
