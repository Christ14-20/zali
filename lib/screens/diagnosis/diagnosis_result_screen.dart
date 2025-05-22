import 'package:flutter/material.dart';

class DiagnosisResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simuler un résultat de diagnostic
    final String diagnosis = 'Vous avez peut-être un rhume. Nous recommandons une infusion de gingembre et citron.';

    return Scaffold(
      appBar: AppBar(title: Text('Résultat du Diagnostic')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              diagnosis,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/treatmentFollowup');
              },
              child: Text('Voir le suivi du traitement'),
            ),
          ],
        ),
      ),
    );
  }
}
