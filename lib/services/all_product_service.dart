import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> jSonData =
        await Api().get(endPoint: 'products');
    List<ProductModel> productsList = [];
    for (var jSonItem in jSonData) {
      productsList.add(ProductModel.fromJson(jSonItem));
    }
    return productsList;
  }
}
