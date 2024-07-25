import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> jSonData = jsonDecode(response.body);
    List<ProductModel> productsList = [];
    for (var jSonItem in jSonData) {
      productsList.add(ProductModel.fromJson(jSonItem));
    }

    return productsList;
  }
}
