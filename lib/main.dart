import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:store_app/helpers/api.dart';
import 'package:store_app/services/all_product_service.dart';

import 'views/home_page.dart';

void main(List<String> args) async {
  runApp(const StoreApp());
  // log(AllProductService().getAllProducts().toString());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
