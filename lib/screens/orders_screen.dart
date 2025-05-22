import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {'id': '001', 'status': 'Livré', 'date': '12/05/2025'},
    {'id': '002', 'status': 'En cours', 'date': '13/05/2025'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mes Commandes')),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text('Commande #${order['id']}'),
            subtitle: Text('Statut : ${order['status']}'),
            trailing: Text(order['date']),
          );
        },
      ),
    );
  }
}
