import 'package:dio/dio.dart';
import 'package:nested_model/screen/model.dart';
class NestedApiCalss {
  // ignore: unused_field
   final Dio _dio = Dio();
  // ignore: unused_element
  Future<List<NestedModel>> nestedFData() async {
    try {
      final response = await _dio.get(
          'https://fakestoreapi.com/products');
      if (response.statusCode == 200) {
        // ignore: avoid_print
        print(response.data);
        return response.data
            .map<NestedModel>((json) => NestedModel.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to load ListingModel');
      }
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }
}