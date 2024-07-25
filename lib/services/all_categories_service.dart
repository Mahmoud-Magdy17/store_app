import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if (response.statusCode == 200) {
      List<String> jsonData = jsonDecode(response.body);

      return jsonData;
    } else {
      throw (
        Exception(
          "There is an error on status code ${response.statusCode}",
        ),
      );
    }
  }
}
