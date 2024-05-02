import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_app/infrastructure/datasources/user_db_datasource.dart';
import 'package:users_app/infrastructure/repositories/user_repository_impl.dart';

final userRepositoryProvider = Provider((ref) {

  return UserRepositoryImpl(UserdbDatasource());
});