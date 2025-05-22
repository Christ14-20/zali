import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class AppointmentScreen extends StatelessWidget {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController motifController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Prendre Rendez-vous')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: dateController,
              decoration: InputDecoration(labelText: 'Date souhaitée'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: motifController,
              decoration: InputDecoration(labelText: 'Motif de consultation'),
            ),
            SizedBox(height: 30),
            CustomButton(
              text: 'Confirmer',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Rendez-vous pris avec succès !')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
