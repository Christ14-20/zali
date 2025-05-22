import 'package:flutter/material.dart';

class RemediesListScreen extends StatelessWidget {
  const RemediesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Remedies List')),
      body: const Center(
        child: Text('List of Remedies will be shown here.'),
      ),
    );
  }
}
