import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class Api {
  String baseURL = 'https://fakestoreapi.com';
  Future<dynamic> get({required String endPoint}) async {
    log("Getting form: $baseURL/$endPoint");
    http.Response response = await http.get(
      Uri.parse(
        '$baseURL/$endPoint',
      ),
    );

    try {
      log("Data got: ${jsonDecode(response.body)}");
      return jsonDecode(response.body);
    } catch (e) {
      throw (
        Exception(
          "There is an error on status code ${response.statusCode}",
        ),
      );
    }
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    log("Posting Data to: $baseURL/$endPoint -> Data: $data");

    http.Response response = await http.post(
      Uri.parse(
        '$baseURL/$endPoint',
      ),
      body: data,
    );
    log('Response: ${jsonDecode(response.body)}');
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> put({
    required String endPoint,
    required Map<String, dynamic> data,
    required int id,
  }) async {
    http.Response response = await http.put(
      Uri.parse(
        '$baseURL/$endPoint/$id',
      ),
      body: data,
    );
    return jsonDecode(response.body);
  }
}
