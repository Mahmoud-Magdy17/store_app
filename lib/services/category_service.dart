import 'package:store_app/models/product_model.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class CategoryService {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));

    if (response.statusCode == 200) {
      List<dynamic> jSonData = jsonDecode(response.body);
      List<ProductModel> productsList = [];
      for (var jSonItem in jSonData) {
        productsList.add(ProductModel.fromJson(jSonItem));
      }

      return productsList;
    } else {
      throw Exception(
        "there is an error on status code ${response.statusCode}",
      );
    }
  }
}
