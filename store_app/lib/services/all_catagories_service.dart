import 'package:store_app/helper/api.dart';

class AllCatagoriesService {
  Future<List<dynamic>> getAllCatagories() async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
