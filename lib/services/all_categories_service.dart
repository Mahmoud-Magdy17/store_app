import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helpers/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<String> jsonData = await Api().get(endPoint: 'categories');
    return jsonData;
  }
}
