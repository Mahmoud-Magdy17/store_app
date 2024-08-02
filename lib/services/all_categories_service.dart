import 'package:store_app/core/helpers/api.dart';
import 'package:store_app/core/models/product_model.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<String> jsonData = await Api().get(endPoint: 'categories');
    return jsonData;
  }
  Future<void> addProduct(ProductModel product) async{
    await Api().post(endPoint: 'products', data: product.jSonData); 
  }
}
