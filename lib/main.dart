import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/api.dart';
import 'package:store_app/features/display_products_feature/service/all_product_service.dart';
import 'package:store_app/features/update_product_feature/views/update_product_page.dart';

import 'features/display_products_feature/views/display_all_products_page.dart';

void main(List<String> args) async {
  runApp(const StoreApp());
  // log(AllProductService().getAllProducts().toString());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        DisplayAllProductsPage.route: (context) => const DisplayAllProductsPage(),
        UpdateProductPage.route:(context) =>  UpdateProductPage()
      },
      initialRoute: DisplayAllProductsPage.route,
    );
  }
}
