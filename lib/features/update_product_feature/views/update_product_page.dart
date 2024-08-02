import 'package:flutter/material.dart';
import 'package:store_app/core/models/product_model.dart';
import 'package:store_app/features/update_product_feature/views/widgets/custom_form_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key, required this.product});
  static const String route = "Update page";
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('update product'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomFormField(
            hintText: 'product name',
            onChange: (productTitle) {},
          ),
          CustomFormField(
            hintText: 'Description',
            onChange: (productDescription) {},
          ),
          CustomFormField(
            hintText: 'Price',
            onChange: (productPrice) {},
          ),
          CustomFormField(
            hintText: 'Image',
            onChange: (productImage) {},
          ),
          
        ],
      ),
    );
  }
}
