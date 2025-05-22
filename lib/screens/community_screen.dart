import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  final List<String> posts = [
    'Quel remède naturel pour l\'anémie ?',
    'Expérience avec les feuilles de Moringa.',
    'Partagez vos recettes contre la toux sèche.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Communauté')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(posts[index]),
            onTap: () {
              // Aller vers le détail du post (non implémenté ici)
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action pour créer un post
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
