import 'package:flutter/material.dart';

import '../../../../core/models/product_model.dart';
import '../../../../core/widgets/custom_circular_progress_indeicator.dart';
import '../../service/all_product_service.dart';
import 'custom_product_card.dart';

class DisplayAllProducts extends StatelessWidget {
  const DisplayAllProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: AllProductService().getAllProducts(),
      builder: (BuildContext context, snapshot) {
        List<ProductModel>? products = snapshot.data;
        return products != null
            ? GridView.builder(
                clipBehavior: Clip.none,
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CustomProductCard(product: products[index]);
                },
              )
            : const CustomProgressIndicator();
      },
    );
  }
}
