import 'package:flutter/material.dart';
import 'package:store_app/core/models/product_model.dart';
import 'package:store_app/features/update_product_feature/views/widgets/custom_button.dart';
import 'package:store_app/features/update_product_feature/views/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key, required this.product});
  static const String route = "Update page";
  final ProductModel product;
  String? productTitle;
  String? productDescription;
  String? productPrice;
  String? productImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('update product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              hintText: "(old) ${product.title}",
              onChange: (data) {
                productTitle = data;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintText: '(old) ${product.description}',
              onChange: (data) {
                productDescription = data;
              },
            ),
            
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintText: '(old) ${product.price}',
              onChange: (data) {
                productPrice = data;
              },
              keyboardType: TextInputType.number,
            ),
            
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintText: '(old) ${product.image}',
              onChange: (data) {
                productImage = data;
              },
            ),
            
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              title: "Update product",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
