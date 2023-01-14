import 'dart:convert';

import 'package:http/http.dart' as http;

class HTTPServices {
  // ignore: non_constant_identifier_names
  final String port_address = 'http://127.0.0.1:5001';
  Future<http.Response> getRequest({required String endpoint}) async {
    final response = await http.get(Uri.parse('$port_address/$endpoint'));

    return response;
  }

  Future<http.Response> postRequest(
      {required Map<String, dynamic> data, required String endpoint}) async {
    final response = await http.post(Uri.parse('$port_address/$endpoint'),
        headers: {'content-type': 'application/json'}, body: json.encode(data));
    return response;
  }
}
