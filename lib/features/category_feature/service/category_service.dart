import 'package:store_app/core/helpers/api.dart';
import 'package:store_app/core/models/product_model.dart';

class CategoryService {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    List<dynamic> jSonData =
        await Api().get(endPoint: "products/category/$categoryName");
    List<ProductModel> productsList = [];
    for (var jSonItem in jSonData) {
      productsList.add(ProductModel.fromJson(jSonItem));
    }
    return productsList;
  }
}
