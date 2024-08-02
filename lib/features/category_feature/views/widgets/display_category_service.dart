import 'package:flutter/material.dart';
import 'package:store_app/features/category_feature/service/category_service.dart';

import '../../../../core/models/product_model.dart';
import '../../../../core/widgets/custom_circular_progress_indeicator.dart';
import '../../../../core/widgets/custom_product_card.dart';


class DisplayCategoryProducts extends StatelessWidget {
  const DisplayCategoryProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: CategoryService().getCategory(categoryName: ''),
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
