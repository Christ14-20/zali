import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {'title': 'Remèdes', 'route': '/remedies'},
    {'title': 'Diagnostic', 'route': '/diagnosis'},
    {'title': 'Rendez-vous', 'route': '/appointments'},
    {'title': 'Urgence', 'route': '/emergency'},
    {'title': 'Suivi Traitement', 'route': '/treatmentFollowup'},
    {'title': 'Communauté', 'route': '/community'},
    {'title': 'Panier', 'route': '/cart'},
    {'title': 'Commandes', 'route': '/orders'},
    {'title': 'Profil', 'route': '/profile'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, item['route']!),
            child: Card(
              color: Colors.green.shade100,
              child: Center(
                child: Text(item['title']!, textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
              ),
            ),
          );
        },
      ),
    );
  }
}
