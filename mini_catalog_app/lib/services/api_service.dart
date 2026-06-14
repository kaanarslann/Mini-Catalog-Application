
import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:mini_catalog_app/models/products_model.dart';

class ApiService {
  Future<ProductsModel> fetchProducts() async {
    final response = await http.get(
      Uri.parse("https://wantapi.com/products.php"),
    );

    if(response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return ProductsModel.fromJson(data);
    } else {
      throw Exception("Products fetch has failed.");
    }
  }
}