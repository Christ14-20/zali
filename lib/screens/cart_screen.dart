import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {'name': 'Infusion de Gingembre', 'price': 2000},
    {'name': 'Huile de Baobab', 'price': 5000},
  ];

  @override
  Widget build(BuildContext context) {
    double total = cartItems.fold(0, (sum, item) => sum + item['price']);

    return Scaffold(
      appBar: AppBar(title: Text('Panier')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  title: Text(item['name']),
                  trailing: Text('${item['price']} FCFA'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('Total : $total FCFA', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Aller vers la page de paiement
                  },
                  child: Text('Passer commande'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
