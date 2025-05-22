import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';

class DiagnosisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnosis'),
      ),
      body: Center(
        child: CustomButton(
          text: 'Start Diagnosis',
          onPressed: () {
            // Action à exécuter
          },
        ),
      ),
    );
  }
}
