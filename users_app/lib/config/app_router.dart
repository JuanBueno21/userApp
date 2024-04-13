import 'package:go_router/go_router.dart';
import 'package:users_app/presentation/pages/userlist.dart';
import '../presentation/pages/user_details.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: UserList.name,
      builder: (context, state) => const UserList(),
    ),
    GoRoute(
      path: "/user/:id",
      name: UserDetails.name,
      builder: (context, state) {
        final userIdString = state.pathParameters["id"] ?? "";
        int userIdInt = int.parse(userIdString);

        return UserDetails(userId: userIdInt);
      },
    ),
  ],
);
