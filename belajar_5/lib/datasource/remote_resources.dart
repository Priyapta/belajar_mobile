import 'package:belajar_5/model/models.dart';
import 'package:dio/dio.dart';

class RemoteDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));

  Future<DataUser> getUsers() async {
    final response = await dio.get('/users');
    return DataUser.fromJson(response.data);
  }
}
