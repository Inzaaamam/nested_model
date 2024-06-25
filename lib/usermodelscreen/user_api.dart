import 'package:dio/dio.dart';
import 'package:nested_model/usermodelscreen/user_model.dart';
class UserApiClass {
  // ignore: unused_field
   final Dio _dio = Dio();
  // ignore: unused_element
  Future<List<UserModel>> userFatchData() async {
    try {
      final response = await _dio.get(
          'https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        // ignore: avoid_print
        print(response.data);
        return response.data
            .map<UserModel>((json) => UserModel.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to load ListingModel');
      }
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }
}