import 'package:http/http.dart' as http;
import 'dart:convert';


class AllCatagoriesService {
  Future<List<dynamic>> getAllCatagories() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));

    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
}
