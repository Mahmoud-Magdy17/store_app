import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/features/add_product_feature/views/add_product_service.dart';

import 'widgets/display_category_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String route = "Display all products";
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Trend"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cartShopping),
            onPressed: () {
              Navigator.pushNamed(context, AddProductPage.route);
            },
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 64),
        child: DisplayCategoryProducts(),
      ),
    );
  }
}
