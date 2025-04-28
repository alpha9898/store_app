import 'package:http/http.dart' as http;
import 'dart:convert';

class AllCatagoriesService {
  Future<List<dynamic>> getAllCatagories() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is proplem with status code ${response.statusCode}'); // Throw an exception if the request fails or there's an issue wit
    }
  }
}
