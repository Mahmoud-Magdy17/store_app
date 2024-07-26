import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class Api {
  String baseURL = 'https://fakestoreapi.com';
  Future<dynamic> get({required String endPoint}) async {
    http.Response response = await http.get(
      Uri.parse(
        '$baseURL/$endPoint',
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

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    http.Response response = await http.post(
      Uri.parse(
        '$baseURL/$endPoint',
      ),
      body: data,
    );
    return jsonDecode(response.body);
  }
}
