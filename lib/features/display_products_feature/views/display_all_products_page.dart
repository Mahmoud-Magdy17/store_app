import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/core/widgets/custom_circular_progress_indeicator.dart';
import 'package:store_app/core/models/product_model.dart';
import '../service/all_product_service.dart';
import 'widgets/custom_product_card.dart';

class DisplayAllProductsPage extends StatelessWidget {
  const DisplayAllProductsPage({super.key});
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
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 64),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductService().getAllProducts(),
          builder: (BuildContext context, snapshot) {
            List<ProductModel>? products = snapshot.data;
            return products != null
                ? GridView.builder(
                    clipBehavior: Clip.none,
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return CustomProductCard(product: products[index]);
                    },
                  )
                : const CustomProgressIndicator();
          },
        ),
      ),
    );
  }
}
