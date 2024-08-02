
import 'package:store_app/core/helpers/api.dart';
import 'package:store_app/core/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> jSonData = await Api().get(endPoint: 'products');

    List<ProductModel> productsList = [];
    for (var jSonItem in jSonData) {
      ProductModel item = ProductModel.fromJson(jSonItem);
      productsList.add(item);
    }
    return productsList;
  }
}
