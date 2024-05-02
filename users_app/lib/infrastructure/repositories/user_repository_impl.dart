import 'package:users_app/domain/datasource/user_datasource.dart';
import 'package:users_app/domain/models/user.dart';
import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource datasource;

  UserRepositoryImpl(this.datasource);

  @override
  Future<List<User>> getUsers() {
    return datasource.getUsers();
  }

  @override
  Future<User> getUserById(int id) {
    return datasource.getUserById(id);
  }
}

// esta implementacion me permite cambiar el origen de los datos