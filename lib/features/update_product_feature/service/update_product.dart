import 'package:store_app/core/helpers/api.dart';
import 'package:store_app/core/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required ProductModel product,
    required int id,
  }) async {
    Map<String, dynamic> updatedProduct = await Api().put(
      endPoint: 'products',
      data: product.jSonData,
      id: id,
    );
    return ProductModel(
      id: updatedProduct['id'],
      title: updatedProduct['title'],
      price: updatedProduct['price'],
      description: updatedProduct['description'],
      category: updatedProduct['category'],
      image: updatedProduct['image'],
    );
  }
}
