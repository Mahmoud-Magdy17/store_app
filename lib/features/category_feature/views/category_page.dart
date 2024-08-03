import 'package:flutter/material.dart';
import 'package:store_app/features/category_feature/views/widgets/display_category_products.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  static const String route = "Display Category products";
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 64),
        child: DisplayCategoryProducts(),
      ),
    );
  }
}
