import 'package:dio/dio.dart';
import 'package:users_app/domain/models/user.dart';
import '../../domain/datasource/user_datasource.dart';

class UserdbDatasource extends UserDataSource {
  final dio = Dio(
    BaseOptions(
      baseUrl: ("https://jsonplaceholder.typicode.com"),
    ),
  );

  @override
  Future<List<User>> getUsers() async {
    final response = await dio.get("/usersd");

    List<User> userList = [];

    if (response.statusCode == 200) {
      final List<dynamic> userListjson = response.data;
      userList = userListjson.map((e) => User.fromJson(e)).toList();
    } else {
      print("unable to get data");
    }

    return userList;
  }

  @override
  Future<User> getUserById(int id) async {
    final response = await dio.get("/users/$id");

    final User user = User.fromJson(response.data);

    return user;
  }
}
