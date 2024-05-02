import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/user.dart';
import '../providers/users/user_details_provider.dart';

class UserDetails extends ConsumerStatefulWidget {
  static const name = "user-details";

  final int userId;

  const UserDetails({required this.userId, super.key});

  @override
  UserDetailsState createState() => UserDetailsState();
}

class UserDetailsState extends ConsumerState<UserDetails> {
  @override
  void initState() {
    super.initState();

    ref.read(userDetailsProvider.notifier).loadUser(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    final User? user = ref.watch(userDetailsProvider)[widget.userId];

    if (user == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Details of: ${user.name}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              children: [
                Icon(Icons.info),
                Text(
                  " INFORMATION:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "Name: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.name),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Email: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.email),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Website: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.website),
              ],
            ),
            const Divider(
              thickness: 2.0,
              indent: 10.0,
              endIndent: 10,
            ),
            const Row(
              children: [
                Icon(Icons.location_on),
                Text(
                  " ADDRESS INFORMATION:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "City: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.address.city),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Zipcode: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.address.zipcode),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Street: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.address.street),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Suite: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.address.suite),
              ],
            ),
            const Divider(
              thickness: 2.0,
              indent: 10.0,
              endIndent: 10,
            ),
            const Row(
              children: [
                Icon(Icons.apartment_rounded),
                Text(
                  " COMPANY INFO:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "Name: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.company.name),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Catch Phrase: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.company.catchPhrase),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Bs: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(user.company.bs),
              ],
            )
          ],
        ),
      ),
    );
  }
}
