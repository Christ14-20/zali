import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class EmergencyContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact d\'urgence')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('En cas d\'urgence, appelez le 1234 ou contactez un guérisseur partenaire.'),
            SizedBox(height: 20),
            CustomButton(
              text: 'Appeler maintenant',
              onPressed: () {
                // Intégrer un package pour lancer un appel téléphonique
              },
            ),
          ],
        ),
      ),
    );
  }
}
