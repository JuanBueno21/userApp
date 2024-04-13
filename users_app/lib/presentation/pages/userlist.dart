import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:users_app/presentation/pages/user_cell.dart';
import 'package:users_app/presentation/providers/users/users_providers.dart';

class UserList extends StatelessWidget {
  static const name = "user-list";

  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return const _UserListView();
  }
}

class _UserListView extends ConsumerStatefulWidget {
  const _UserListView();

  @override
  _UserListViewState createState() => _UserListViewState();
}

class _UserListViewState extends ConsumerState<_UserListView> {
  @override
  void initState() {
    super.initState();

    ref.read(usersProvider.notifier).loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    final users = ref.watch(usersProvider);

    if (users.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              const Text("Users App"),
              Text("${users.length} users"),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    title: UserCell(user: user),
                    onTap: () => context.push("/user/${user.id}"),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }
  }
}
