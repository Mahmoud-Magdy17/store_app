import 'package:flutter/material.dart';
import 'package:store_app/features/add_product_feature/views/add_product_service.dart';
import 'package:store_app/features/update_product_feature/views/update_product_page.dart';

import 'features/category_feature/views/category_page.dart';
import 'features/display_products_feature/views/home_page.dart';

void main(List<String> args) async {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.route: (context) => const HomePage(),
        UpdateProductPage.route: (context) => const UpdateProductPage(),
        AddProductPage.route: (context) => const AddProductPage(),
        CategoryPage.route: (context) => const CategoryPage(),
      },
      initialRoute: HomePage.route,
    );
  }
}
