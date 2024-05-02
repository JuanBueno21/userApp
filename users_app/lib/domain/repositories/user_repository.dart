
import '../models/user.dart';

abstract class UserRepository {
  Future <List<User>> getUsers();
  Future <User> getUserById(int id);
}

// el UserRepository va a hacer el llamado al UserDataSource