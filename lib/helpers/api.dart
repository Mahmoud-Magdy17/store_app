import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String endPoint}) async {
    http.Response response = await http.get(
      Uri.parse(
        'https://fakestoreapi.com/$endPoint',
      ),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw (
        Exception(
          "There is an error on status code ${response.statusCode}",
        ),
      );
    }
  }
}
