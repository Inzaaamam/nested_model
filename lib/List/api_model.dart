import 'package:dio/dio.dart';
import 'package:nested_model/List/list_model.dart';

class ModelApiClass {
  final Dio _dio = Dio();

  Future<List<Modelclass>> modelFatchData() async {
    try {
      final response = await _dio.get(
          'http://139.162.52.253/mns_sindh/apiscontroller/Apiscontroller/chklist_names_api?user_id=26&fmonth=2024-07');
      if (response.statusCode == 200) {
        return (response.data['message'] as List)
            .map((json) => Modelclass.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to load ListingModel');
      }
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }
}
