import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/core/models/product_model.dart';
import 'package:store_app/core/widgets/custom_form_field.dart';
import 'package:store_app/features/add_product_feature/services/add_product.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/core/widgets/custom_text_field.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({
    super.key,
  });
  static const String route = "Add Product";

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String? productTitle;

  String? productDescription;

  String? productPrice;

  String? productImage;

  bool isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AddProductPage.route),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFormField(
                  hintText: "Title",
                  onChanged: (data) {
                    productTitle = data;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomFormField(
                  hintText: 'Description',
                  onChanged: (data) {
                    productDescription = data;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomFormField(
                  hintText: 'Price',
                  onChanged: (data) {
                    productPrice = data;
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextField(
                  hintText: 'Image',
                  onChanged: (data) {
                    productImage = data;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Add product",
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});

                      try {
                        await addProduct();
                        log("product added");
                      } catch (e) {
                        log("Exception: ${e.toString()}");
                      }

                      isLoading = false;
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> addProduct() async {
    await AddProductService().addProduct(
      ProductModel(
        id: 3,
        title: productTitle!,
        price: productPrice!,
        description: productDescription!,
        category: "",
      ),
    );
  }
}
