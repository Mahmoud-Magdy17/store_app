import 'package:flutter/material.dart';
import 'package:store_app/features/add_product_feature/views/add_product_service.dart';
import 'package:store_app/features/update_product_feature/views/update_product_page.dart';

import 'features/display_products_feature/views/home_page.dart';

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
        HomePage.route: (context) => const HomePage(),
        UpdateProductPage.route: (context) => const UpdateProductPage(),
        AddProductPage.route: (context) => const AddProductPage(),
      },
      initialRoute: HomePage.route,
    );
  }
}
