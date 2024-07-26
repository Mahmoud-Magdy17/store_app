import 'dart:developer';

import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct(ProductModel product) async {
    log(product.title);
    Map<String, dynamic> addedProduct = await Api().post(
      endPoint: 'products',
      data: product.jSonData,
    );
    return ProductModel(
      id: addedProduct['id'],
      title: addedProduct['title'],
      price: addedProduct['price'],
      description: addedProduct['description'],
      category: addedProduct['category'],
      image: addedProduct['image'],
    );
  }
}
