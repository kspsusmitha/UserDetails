import 'package:dio/dio.dart';
import 'package:user_details/model/user.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<User>> fetchUsers() async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/users');
      List<User> users =
          (response.data as List).map((user) => User.fromJson(user)).toList();
      return users;
    } catch (e) {
      throw Exception('Failed to load users');
    }
  }
}
