import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatagoriesService {
  Future<List<ProductModel>> getCatagoriesProduct(
      {required String catagoryname}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$catagoryname'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
        return productsList;
      }
      return productsList;
    } else {
      throw Exception(
          'there is proplem with status code ${response.statusCode}'); // Throw an exception if the request fails or there's an issue wit
    }
  }
}
