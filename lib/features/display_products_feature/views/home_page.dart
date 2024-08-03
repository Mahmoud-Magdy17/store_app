import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/features/category_feature/functions/show_bottom_sheet.dart';
import 'package:store_app/features/display_products_feature/views/widgets/display_all_products.dart';

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
            icon: const Icon(FontAwesomeIcons.objectGroup),
            onPressed: () {
              showCustomSheet(context: context);
            },
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 64),
        child: DisplayAllProducts(),
      ),
    );
  }
}
