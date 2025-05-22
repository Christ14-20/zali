import 'package:flutter/material.dart';

class TreatmentFollowupScreen extends StatelessWidget {
  final List<Map<String, dynamic>> treatments = [
    {
      'title': 'Infusion de Gingembre',
      'status': 'En cours',
      'progress': 0.6,
    },
    {
      'title': 'Feuilles de Neem',
      'status': 'Terminé',
      'progress': 1.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Suivi des traitements')),
      body: ListView.builder(
        itemCount: treatments.length,
        itemBuilder: (context, index) {
          final treatment = treatments[index];
          return ListTile(
            title: Text(treatment['title']),
            subtitle: LinearProgressIndicator(value: treatment['progress']),
            trailing: Text(treatment['status']),
          );
        },
      ),
    );
  }
}
