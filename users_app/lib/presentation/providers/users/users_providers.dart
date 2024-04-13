import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_app/domain/models/user.dart';
import 'package:users_app/presentation/providers/users/users_repository_provider.dart';

final usersProvider = StateNotifierProvider<UsersNotifier, List<User>>((ref) {
  final fetchUsers = ref.watch(userRepositoryProvider).getUsers;

  return UsersNotifier(fetchUsers: fetchUsers);
});

typedef UsersCallBack = Future<List<User>> Function();

class UsersNotifier extends StateNotifier<List<User>> {
  UsersCallBack fetchUsers;

  UsersNotifier({required this.fetchUsers}) : super([]);

  Future<void> loadUsers() async {
    final List<User> users = await fetchUsers();

    state = [...state, ...users];
  }
}
