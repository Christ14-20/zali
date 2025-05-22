import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(radius: 50, backgroundImage: AssetImage('assets/avatar.png')),
            SizedBox(height: 20),
            Text('Nom : Jean Koffi'),
            Text('Email : koffi@gmail.com'),
            Text('Téléphone : +225 07000000'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Naviguer vers l'édition du profil
              },
              child: Text('Modifier Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
