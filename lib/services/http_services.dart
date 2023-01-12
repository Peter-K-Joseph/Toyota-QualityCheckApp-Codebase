import 'package:http/http.dart' as http;

class HTTPServices {
  // ignore: non_constant_identifier_names
  final String port_address = 'http://192.168.1.102:5001';
  Future<http.Response> getRequest({required String endpoint}) async {
    final response = await http.get(Uri.parse('$port_address/$endpoint'));

    return response;
  }

  Future<http.Response> postRequest(
      {required Map<String, dynamic> data, required String endpoint}) async {
    final response =
        await http.post(Uri.parse('$endpoint/$endpoint'), body: data);
    return response;
  }
}
