import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_app/domain/models/user.dart';
import 'package:users_app/presentation/providers/users/users_repository_provider.dart';

final userDetailsProvider =
    StateNotifierProvider<UserNotifier, Map<int, User>>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return UserNotifier(fetchUser: userRepository.getUserById);
});

typedef UserCallBack = Future<User> Function(int userId);

class UserNotifier extends StateNotifier<Map<int, User>> {
  UserCallBack fetchUser;

  UserNotifier({required this.fetchUser}) : super({});

  Future<void> loadUser(int userId) async {
    if (state[userId] != null) return;

    final user = await fetchUser(userId);
    state = {...state, userId: user};
  }
}
