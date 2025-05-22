import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://'; // Remplace par ton URL réelle

  Future<List<dynamic>> fetchRemedies() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/remedies'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data;
      } else {
        throw Exception('Erreur serveur: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Erreur réseau: $e');
    }
  }

  Future<Map<String, dynamic>> fetchRemedyDetail(int id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/remedies/$id'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return data;
      } else {
        throw Exception('Erreur serveur: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Erreur réseau: $e');
    }
  }
}
