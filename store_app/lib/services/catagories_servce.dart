import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CatagoriesService {
  Future<List<ProductModel>> getCatagoriesProduct(
      {required String catagoryname}) async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/category/$catagoryname');

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
        return productsList;
      }
      return productsList;
    }
  }
