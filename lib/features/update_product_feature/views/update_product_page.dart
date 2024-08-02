import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/core/models/product_model.dart';
import 'package:store_app/features/update_product_feature/service/update_product_service.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/core/widgets/custom_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({
    super.key,
  });
  static const String route = "Update page";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productTitle;

  String? productDescription;

  String? productPrice;

  String? productImage;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                onChanged: (data) {
                  productTitle = data;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: '(old) ${product.description}',
                onChanged: (data) {
                  productDescription = data;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: '(old) ${product.price}',
                onChanged: (data) {
                  productPrice = data;
                },
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: '(old) ${product.image}',
                onChanged: (data) {
                  productImage = data;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                title: "Update product",
                onPressed: () async {
                  isLoading = true;
                  setState(() {});

                  try {
                    await updateProduct(
                      product: product,
                    );
                    log("product updated");
                  } catch (e) {
                    log("Exception: ${e.toString()}");
                  }

                  isLoading = false;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct({product}) async {
    await UpdateProductService().updateProduct(
      product: ProductModel(
        id: product.id,
        title: productTitle ?? product.title,
        price: productPrice ?? product.price,
        description: productDescription ?? product.description,
        category: product.category,
      ),
      id: product.id,
    );
  }
}
