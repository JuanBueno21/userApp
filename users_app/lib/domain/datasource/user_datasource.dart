

import 'package:users_app/models/user.dart';

abstract class UserDataSource {

  Future <List<User>> getUsers();

  Future <User> getUserById(int id);


}